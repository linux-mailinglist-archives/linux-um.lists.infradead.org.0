Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65E1BE116F
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 07:00:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaahqSrAx9dt2/H7NT3POfr4eyxkT+V/sC4u+74A8hs=; b=Nr9yNE8AwEDkcZ
	ID7DRFS/0q/wvaKCA6cKOFc7ru6dGWhqkBbm8HMY6ollszkmgpcuUthqbFcdoecpncw7f/soYO6mo
	prlYCohSVqXpceaDXTL+50fCL/8NRdHD9hg8C+57IS32M2eNx8YhKtT2VbjVTHW5h7d1jffq+xkYc
	zw+hqq86mKkkUK5bsDuCeErIHgkfOOo6eXeq5Tw+WckZXqsOQaTbfdtGE8h9bgt5ml1cfTJTkbjlI
	+Xn/C8VLr4uVGiqG2pgFkPHk2/YMcS6/FrwUlHlc/r0BAXvFUpbJZOnwcm0l96ibcNVtN4gbxPqnl
	kgPS0xn8P+P1GUxA8Wew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8l0-0002LR-Vq; Wed, 23 Oct 2019 05:00:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8kp-0002C6-1H
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 05:00:21 +0000
Received: by mail-pg1-x542.google.com with SMTP id c8so6569214pgb.2
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 22:00:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8AZNr+UZi9FN5KTkWLNlzFX0rObVke+OBsR7u63hpJY=;
 b=J49T76u1Y8ZlSVJShZwz7rHGfrJUFkjxy7WoWoOYPc6bkYBOSTziknF7x//uoRGp4s
 jh8QzVzoUVOqICO1FY+bR+5oNNtqNuYIv8+jrpZGQGE0QGPQ7hIlqRcBhC9OurbCqUzs
 Co9I2Elsa/F3P3wG6iOJxlmdh8F1QGZiFr2xHb+pbuKW5jmYwFFZEM2aS+FpCgSne7ol
 hQdbubc0hJlQDTCZXT+NrCsZVQZ7MiDTsr1MDLAlS0VOMPM9LFWqL4LzoE0MlTL/j2pD
 mnm32fqHHXuJ6dXbO2zipvEGZmYA4bx+7QBMWrPwEeA/7GaM0v5nhfhyU/xY3grSiuCt
 GIBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8AZNr+UZi9FN5KTkWLNlzFX0rObVke+OBsR7u63hpJY=;
 b=pzCQLKMjuuuMkbe7Q0v2EVl13gWYZF/4QQesR0nMhwtNgyOMi3G6zq5+WTzRssR4GE
 0uh5aZsctqYksN8TqXShYMKfoCXKGGX4eo/cYDQMNPuYgHvJATM0felCVnAp8lV+uJfy
 5nlDKr5VajatCnyYh5jgThrmjuxCR8Rjr5IarKY7mQUdPx0Wl6Wne/a+n1Ui+XeSXZ44
 FNBF4yG4znS8K68RLNDFMEf8+r7OP6jFmQnbmhR5tgDrjy7zFpeuppIjk/dniXLgOXIS
 bn9zic/XyiGK6DzAh3ZwsJXbGZCzq/2/29m2yuqC46QMayYzO+cfIdHCEjrIRDzlzcAe
 HRtA==
X-Gm-Message-State: APjAAAUZT2slhOJn4blQBh5n60bTRk30tPvp87OxmMnTPOpoM4nGd1tF
 K6+6UX2wfikWrNr8o8ersb8=
X-Google-Smtp-Source: APXvYqyUqW7Ub67uYumB3LQA9aP02/hqaOEthDavNzXCXifZF9vBwoyfyrg+0L2Ncx6vCd0sZMuYnw==
X-Received: by 2002:a65:4189:: with SMTP id a9mr2317516pgq.380.1571806814226; 
 Tue, 22 Oct 2019 22:00:14 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id n2sm21481186pgg.77.2019.10.22.22.00.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 22:00:11 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 54EEF20199583A; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 36/47] checkpatch: avoid showing BIT_ULL warnings for
 tools/ files
Date: Wed, 23 Oct 2019 13:38:10 +0900
Message-Id: <02ea17cd16cbc76c2e025ff7964ff0321bcd121f.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_220015_105342_3FC920C7 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Octavian Purdila <tavi.purdila@gmail.com>,
 Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

From: Octavian Purdila <tavi.purdila@gmail.com>

Directly using shift operations in userspace compiled code should not
trigger warnings as BIT_ULL macros are not available outside the
kernel.

Signed-off-by: Octavian Purdila <tavi.purdila@gmail.com>
---
 scripts/checkpatch.pl | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 93a7edfe0f05..e739f565497e 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -6313,7 +6313,8 @@ sub process {
 		    $line =~ /#\s*define\s+\w+\s+\(?\s*1\s*([ulUL]*)\s*\<\<\s*(?:\d+|$Ident)\s*\)?/) {
 			my $ull = "";
 			$ull = "_ULL" if (defined($1) && $1 =~ /ll/i);
-			if (CHK("BIT_MACRO",
+			if ($realfile !~ m@\btools/@ &&
+			    CHK("BIT_MACRO",
 				"Prefer using the BIT$ull macro\n" . $herecurr) &&
 			    $fix) {
 				$fixed[$fixlinenr] =~ s/\(?\s*1\s*[ulUL]*\s*<<\s*(\d+|$Ident)\s*\)?/BIT${ull}($1)/;
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
