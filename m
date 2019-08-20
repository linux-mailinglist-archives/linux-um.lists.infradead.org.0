Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2150696D1B
	for <lists+linux-um@lfdr.de>; Wed, 21 Aug 2019 01:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGHXm16A2NSMqGATxL35L1rQCBtyDdyNePj15XzKQyE=; b=rzVglGYqHXtiWY
	XX+GkMJXes5czN5hB1EWbVpPg8KUGmfnE8fJzYoojVZelLqdqeySOaNk7U+ZZ2ar7IrfNe2laTTts
	y9xWAV9xAqO90OhiNTWZNxbFXIs+13gJkP3ITtMlNM0+m/iAFVKotL0sKxmP0MyrDoZhqvbo0R3JS
	xrxvGZhLQg0al25oADnQ9VF/wJAyR7T7k+/8LGKr8kwjFgwOJCTL05C6byTwxqV8KBtFMvxyWiWkF
	3NTjL2VgcgpQIg0aq9bvwRmtASs8hrVORLLPQmNFOI/NRR8mdOTrqQ20b30OCEZj0oW7RX47cgsJE
	prmIDNW9O03Vx+3TfHsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0DRC-00035W-Rn; Tue, 20 Aug 2019 23:21:14 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0DR9-00032k-LI
 for linux-um@lists.infradead.org; Tue, 20 Aug 2019 23:21:12 +0000
Received: by mail-pg1-x54a.google.com with SMTP id x19so199919pgx.1
 for <linux-um@lists.infradead.org>; Tue, 20 Aug 2019 16:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=XDtrvkw0RFhKlN+LitTFqDIh4jTE9hk9LUw2Z5/BXjo=;
 b=GfB79yRsARKNmez787qOELsZmZ3ww5c5KdNG+MLM0ZkalMFVMmzyjPSn7wZeKhOphO
 BJWZzy7YmkXN9/UgkFTtef1jj4+FlXlngojqX89H7vuOPC0dYVsNdB9owDKZLENOO6L5
 mxaSuOLfjrFzQEiAZ9YZ1XMnJWlLFr+j5jaqMZyZSETAJxRVYZ3vcpGhrvvLt0+24Fkg
 GZ+bfBrp0EHb5FcC7VXGQ67bGympCSJmn5xE411lPMKlT0PWqRWUEwUdiREWT5Re1UX4
 RFh+MSnWSjrJ6WwkjZADkd8PAGH3yovb64iBwHH4kCoaMcvhoh9Vu+pgfCSgkklmMJmE
 GyDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=XDtrvkw0RFhKlN+LitTFqDIh4jTE9hk9LUw2Z5/BXjo=;
 b=sGtspjKU0SzM4by+Zr5YczcgfWydV6IVEEttnlRPoWtJ8pVLwzb7IuP4VF+FT410Gq
 H4rdV2bd/93YvQNKQkxGy8NISXW/Y7YKENJCN2jCvo6isRVspDLe8jt1KQx9LNnyJ4pP
 Q9nLAQh+v5gz/JO3JyquE5FqfjlEcFc0IKSgZrh8mmIJsmMwdTdxCgy1US0Q5+fwquv/
 Vw6Xe4W7j9c4jJJnuLex1TyXHN4u93L9dh3tth9+m6SbbHVuyLT4cbk6y7yfrRY+XFTr
 WlRZeH4jwxOd2mCUE/Pb5axmGVZnau+/QJCX3yolmAjugVWkFHCiy7i0BmzuIBQhTQ71
 tniQ==
X-Gm-Message-State: APjAAAUks4Tv8APwxo5903VLNVDl/AkgXYBX+tiYRP6m0pBZUmUBBx8D
 lN8gdgY4Kjc+rkBsn4xff9ZjaZLT6QBL+ZVnfl5FsQ==
X-Google-Smtp-Source: APXvYqwnRfaDdNNQbwqYi1sBE/pq+1Vm1Sa6tTF8ExzVh/t1i5vgUriUWM0c3aCP4jWc1mxnMQ3Gtejv3fCq1fQ0LkUxoA==
X-Received: by 2002:a63:460d:: with SMTP id t13mr26021274pga.205.1566343269803; 
 Tue, 20 Aug 2019 16:21:09 -0700 (PDT)
Date: Tue, 20 Aug 2019 16:20:34 -0700
In-Reply-To: <20190820232046.50175-1-brendanhiggins@google.com>
Message-Id: <20190820232046.50175-7-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190820232046.50175-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.23.0.rc1.153.gdeed80330f-goog
Subject: [PATCH v14 06/18] kbuild: enable building KUnit
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_162111_707140_122FF185 
X-CRM114-Status: UNSURE (   7.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 Brendan Higgins <brendanhiggins@google.com>, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, linux-kselftest@vger.kernel.org,
 linux-nvdimm@lists.01.org, khilman@baylibre.com, knut.omang@oracle.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, kunit-dev@googlegroups.com,
 Michal Marek <michal.lkml@markovi.net>, richard@nod.at, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, mpe@ellerman.id.au,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

KUnit is a new unit testing framework for the kernel and when used is
built into the kernel as a part of it. Add KUnit to the root Kconfig and
Makefile to allow it to be actually built.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Acked-by: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Michal Marek <michal.lkml@markovi.net>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
---
 Kconfig  | 2 ++
 Makefile | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/Kconfig b/Kconfig
index e10b3ee084d4d..47886dbd6c2a6 100644
--- a/Kconfig
+++ b/Kconfig
@@ -32,3 +32,5 @@ source "lib/Kconfig"
 source "lib/Kconfig.debug"
 
 source "Documentation/Kconfig"
+
+source "kunit/Kconfig"
diff --git a/Makefile b/Makefile
index 23cdf1f413646..3795d0a5d0376 100644
--- a/Makefile
+++ b/Makefile
@@ -1005,6 +1005,8 @@ PHONY += prepare0
 ifeq ($(KBUILD_EXTMOD),)
 core-y		+= kernel/ certs/ mm/ fs/ ipc/ security/ crypto/ block/
 
+core-$(CONFIG_KUNIT) += kunit/
+
 vmlinux-dirs	:= $(patsubst %/,%,$(filter %/, $(init-y) $(init-m) \
 		     $(core-y) $(core-m) $(drivers-y) $(drivers-m) \
 		     $(net-y) $(net-m) $(libs-y) $(libs-m) $(virt-y)))
-- 
2.23.0.rc1.153.gdeed80330f-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
