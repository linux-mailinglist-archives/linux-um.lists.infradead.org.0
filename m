Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D3247CBE
	for <lists+linux-um@lfdr.de>; Mon, 17 Jun 2019 10:28:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClbPSfSHql+5rc7E/3+kvsQxSKBIV3uhm8H+jtaWGxs=; b=DRDIbmznIAEB4C
	DqkoX7lqJUoOm42Fe63FT3w/salOFEaT4i+ljFRMUUcRhT0nQ+9HBkUZv+tuRS78cW/uFK7FEST+v
	qcTrPRZpf6vcE1MVQyazX28y8DiusN89JUnV/Xskby3ku6ZNEf3ea8YP34d7yAEpQFMKpRnaM1Z+e
	QzNwZxzIUcpyt8ZhTgpYkQO6kb5lANJM+TX+pXBz+gHuUMXLl7fVpOwm3+HIC7NS5+kZsqQBLl4qC
	0FeLcEc4EK6UFjwv3+SZs9tqdEKOYvo1f6slKhKoalHQktm0w4HNbXr54gJHX8k9x/xlrX3MMehQf
	GFR7+Fdyf63VadAWvl9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcmzt-0007gz-OC; Mon, 17 Jun 2019 08:28:13 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcmzr-0007dU-N4
 for linux-um@lists.infradead.org; Mon, 17 Jun 2019 08:28:12 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id b63so11515321ywc.12
 for <linux-um@lists.infradead.org>; Mon, 17 Jun 2019 01:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=EsSBOAivkaHwi6D12Cv8eKMrxsdP+T6KPHsvwbMQYm0=;
 b=C7EmzIa5t1p3To0eH+Btt+UKnk2zWoDCRcHlxDDez+EJGzuX5/OCX+VtE4f/+IBxBU
 mGEeX0YKVsmTpTHqWxwdvH8hqIG3FELhUYhSlXikfd0094SnjH2SPp0dcm0R005htjts
 6D/xP0jMwTBwY1jE9/ZxkY0+RYLVqYuSTLbgUEKmyJPUnfix1cU3MelrOVMNgQTKcGe9
 cFGgfxb8WDzOX4wGL98vqfITN9oZvAZ6ZQuIixRxb8VtiucW8A40EeqqX9/1t6jRhzWX
 B1r5Tw0xfFTV6bdsPqlvoEcQ0Y0C9kM0VAB1WtVyge15d2r4CngkCHzpB/WflMNr6YDF
 mQ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=EsSBOAivkaHwi6D12Cv8eKMrxsdP+T6KPHsvwbMQYm0=;
 b=szKax5/xPkkxQsIMuki2jvrfjgKx9yid467eVaKT48jty2BUUfDIwQBjlwq75snfmr
 Ft6n3MZ7oq9MY25DXnxPjxtwTvphAdTuQWhnDs9H3AlwawId4+4sOS2sCmR/7gY9e/K/
 +1x9WzeojsuIUbhxY28LI89CqYV8FMCidV9kjArqMOF27HBSufd4QyyqR5kGao0+RxZM
 pwehm3ec2simmGlfX3xi7YJtR2rWfdd+DOMibNhkX5nop56ybW86AwcBXXBAD0Qkc7NV
 Yu6As83vBR/1Q7QRBzVScl3349011S0yI4UHPyOSAXS5TCd+2ylUYV8HzxRGEi09XN9E
 iM0Q==
X-Gm-Message-State: APjAAAW9aHL46KEzasDoVCQyza4SFci/eIKJ1ahA67Y0x6E/xaLpu1oT
 Dye+vKlo+yn+ZQx2cHBLw/AalCZS+W+C0Q+iqulhzg==
X-Google-Smtp-Source: APXvYqygaxiZVfos+CJ+dORKXgXbsd4xQo+Oa0IXMYwFW3jHO/QMUCpEYOoJXhDPIYS8TyQgU0luKfcb92R2UWUxnJ1x6Q==
X-Received: by 2002:a25:7642:: with SMTP id r63mr57620375ybc.253.1560760086697; 
 Mon, 17 Jun 2019 01:28:06 -0700 (PDT)
Date: Mon, 17 Jun 2019 01:26:13 -0700
In-Reply-To: <20190617082613.109131-1-brendanhiggins@google.com>
Message-Id: <20190617082613.109131-19-brendanhiggins@google.com>
Mime-Version: 1.0
References: <20190617082613.109131-1-brendanhiggins@google.com>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v5 18/18] MAINTAINERS: add proc sysctl KUnit test to PROC
 SYSCTL section
From: Brendan Higgins <brendanhiggins@google.com>
To: frowand.list@gmail.com, gregkh@linuxfoundation.org, jpoimboe@redhat.com, 
 keescook@google.com, kieran.bingham@ideasonboard.com, mcgrof@kernel.org, 
 peterz@infradead.org, robh@kernel.org, sboyd@kernel.org, shuah@kernel.org, 
 tytso@mit.edu, yamada.masahiro@socionext.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012811_777423_F5E9AEE8 
X-CRM114-Status: UNSURE (   7.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 richard@nod.at, rdunlap@infradead.org, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org,
 logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Add entry for the new proc sysctl KUnit test to the PROC SYSCTL section.

Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
Reviewed-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Reviewed-by: Logan Gunthorpe <logang@deltatee.com>
---
 MAINTAINERS | 1 +
 1 file changed, 1 insertion(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index f3fb3fc30853e..05cd8ffd33c8f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12718,6 +12718,7 @@ S:	Maintained
 F:	fs/proc/proc_sysctl.c
 F:	include/linux/sysctl.h
 F:	kernel/sysctl.c
+F:	kernel/sysctl-test.c
 F:	tools/testing/selftests/sysctl/
 
 PS3 NETWORK SUPPORT
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
