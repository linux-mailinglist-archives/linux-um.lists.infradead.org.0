Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0FFBC3F5
	for <lists+linux-um@lfdr.de>; Tue, 24 Sep 2019 10:17:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+fJWv/bsOvhxitJlvFpHWKqodmcQl4XRJ4QgvGECbBQ=; b=NQXeCszwDc7Hbs
	YXApdQLCahztx/SmaDKa5zb6e4IFk9LC7Zt4YuI7vvXg5W4Vj4VdDH6FGEXe3mXipYbnxt3FITCCP
	ddy3RJZTLr5SlV6rJbGrgBAysTl3Dq1WE+clMVxxM9AAn8w2aeUiqni0ltBSACyYno/J4wbQ9tL/X
	R/t+wY08Z/kZQQkLuQXjHaiUx3p8znrNQ+zzQ9agUuWB7kQ79+J0L34KzwVdiIciXowR3t4of820Y
	0Yz/cElxgwMJ22TVOffn4x4weLoA7/BQA9v0HS9TlYQTVrgWHT6b7YKndsfpFbRtqHLbK2I2lk4Cd
	pQJ8ZrzlxZN0QOcyCTpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCg16-0002Qe-3z; Tue, 24 Sep 2019 08:17:48 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCg12-0002Ov-2O
 for linux-um@lists.infradead.org; Tue, 24 Sep 2019 08:17:45 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>)
 id 1iCg0z-00008t-OU; Tue, 24 Sep 2019 10:17:41 +0200
Message-ID: <c8cbee753dc0306fd7597f43a45e05d99d404b29.camel@sipsolutions.net>
Subject: static EXPORT_SYMBOL checker causes false positives on ARCH=um
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, Denis
 Efremov <efremov@linux.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Emil Velikov <emil.l.velikov@gmail.com>
Date: Tue, 24 Sep 2019 10:17:40 +0200
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_011744_226512_3EAC1EA7 
X-CRM114-Status: UNSURE (   6.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-kbuild@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi,

With the new commit 15bfc2348d54 ("modpost: check for static
EXPORT_SYMBOL* functions") we get a lot of warnings on ARCH=um builds:

WARNING: "rename" [vmlinux] is a static EXPORT_SYMBOL
WARNING: "lseek" [vmlinux] is a static EXPORT_SYMBOL
WARNING: "ftruncate64" [vmlinux] is a static EXPORT_SYMBOL
[...]
see https://p.sipsolutions.net/7232995f34907b9d.txt


This hack fixes *most* of them:

diff --git a/scripts/mod/modpost.c b/scripts/mod/modpost.c
index 820eed87fb43..3e443563ebea 100644
--- a/scripts/mod/modpost.c
+++ b/scripts/mod/modpost.c
@@ -1931,12 +1931,18 @@ static void check_sec_ref(struct module *mod, const char *modname,
 static char *remove_dot(char *s)
 {
 	size_t n = strcspn(s, ".");
+	char *at;
 
 	if (n && s[n]) {
 		size_t m = strspn(s + n + 1, "0123456789");
 		if (m && (s[n + m] == '.' || s[n + m] == 0))
 			s[n] = 0;
 	}
+
+	at = strchr(s, '@');
+	if (at)
+		*at = 0;
+
 	return s;
 }
 

(but obviously just serves to give you an idea of what's going on).


With that, only two remain for me:

WARNING: "__guard" [vmlinux] is a static EXPORT_SYMBOL
WARNING: "__stack_smash_handler" [vmlinux] is a static EXPORT_SYMBOL

and I think that's because they don't even exist at all, so arguably the
code shouldn't export them, but I didn't find a way to detect at build
time if -fstack-protector was enabled or not?

Any thoughts?

Thanks,
johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
