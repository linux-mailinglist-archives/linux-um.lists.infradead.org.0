Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51104A2235
	for <lists+linux-um@lfdr.de>; Thu, 29 Aug 2019 19:27:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7IXzvpOu4U8cy3orlCuaFdEnqC0waJAuKCaD7hUMMR4=; b=eRRlNGpR0WrhDi
	qruhqowB8wXFLmdgPetM3qlCz/pn08KEFi15Htj2/Rh4rfKIIEJCpfTvZ40f7vlEIq9OQYYlaLeYR
	Sm4i/535fGo3mk/e2oHjyV5LlOzKGsu492T3Sf8nLhkasc1sS7j6Gau4eW4Dk/yWoi8Lzmv5zNrpi
	61qBQ+At/3fn+CCZluQ21oXv6hFJ/zvDhp0Xp5uIQiuEwJI/mO6c0XbXbKs9lSCETjLZcsw5j4z2F
	euQUV81koO7bRa+fY7A1aWcZxubDEurOoDOmEGssQ2HiHbkMYFyhCu3NHCGNcaJbxvhHy0zt89nSz
	DXfnJPLQLDCCybCVgM8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3OCW-00070A-F1; Thu, 29 Aug 2019 17:27:12 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3OCT-0006ym-Jp
 for linux-um@lists.infradead.org; Thu, 29 Aug 2019 17:27:11 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.1) (envelope-from <johannes@sipsolutions.net>)
 id 1i3OCN-0005oh-80; Thu, 29 Aug 2019 19:27:03 +0200
Message-ID: <605f243573cd0e0f14c995f6850984b4dca2a50c.camel@sipsolutions.net>
Subject: Re: [PATCH] um: Rewrite host RNG driver.
From: Johannes Berg <johannes@sipsolutions.net>
To: Dark <dark@volatile.bz>, Richard Weinberger <richard@nod.at>
Date: Thu, 29 Aug 2019 19:27:01 +0200
In-Reply-To: <20190829130804.5e644540@TheDarkness>
References: <20190828204609.02a7ff70@TheDarkness>
 <CAFLxGvyiviQxr_Bj57ibTU4DQ1H5wQC4DE5DNFBtAFoohcgbsg@mail.gmail.com>
 <20190829103628.61953f50@thedarkness.local>
 <1851013915.76434.1567092659763.JavaMail.zimbra@nod.at>
 <20190829130804.5e644540@TheDarkness>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_102709_659996_3830BC73 
X-CRM114-Status: UNSURE (   5.10  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Richard Weinberger <richard.weinberger@gmail.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 anton ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, 2019-08-29 at 13:10 -0400, Dark wrote:
> (I'm unsure of how to submit an update
> to my patch so I'll need a bit of guidence on this.)

Resend the patch, but use --subject-prefix 'PATCH v2' and ideally note
somewhere in the patch (possibly after a "---" marker after Signed-off-
by) the changes between the versions, like

[...]
Signed-off-by: ...
---
v2:
 * fix -EAGAIN handling
[...]

Hmm, but looks like you didn't actually use git send-email directly, so
I guess just put "[PATCH v2]" manually.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
