Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86DB0E1114
	for <lists+linux-um@lfdr.de>; Wed, 23 Oct 2019 06:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SnbB3DtJTRWjUOXnyDYE/UgfIqs3AnatBnFLLZyh5Ug=; b=Bdv35PHF245O3G
	KNLI2C7K8JouQAu8F+/j3fQyAbSWkafYi4+6ckDdHADcuKdX/r00bjk/B4szVzYkzez5PrpiJDtkz
	r5vQ+MiTq/Inze0KR7ief2sXciIjZIy6TYWR7Jbt7p0PAIE8IEoudPoU4Xq/CDDtt9hPh69bFrf0m
	CjlKdXx3VnXRtjy7nNNwm4/oMgJxN4e/pXxl0tAQ/lGc7xwaqpmQqYzwaBRjwS0DaS+Y7TX17ydTz
	+znyoliQg/VJ1sBYbtaNIGxJNTRkuJuhARUcmAE232oKpMKbpX5pDK6Sbd/Q6knuh67ly/V7b6Q7s
	2NClV32CyfXgkdDyIfQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iN8QX-00021N-SX; Wed, 23 Oct 2019 04:39:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iN8QL-0001pM-PJ
 for linux-um@lists.infradead.org; Wed, 23 Oct 2019 04:39:10 +0000
Received: by mail-pf1-x442.google.com with SMTP id q5so12072120pfg.13
 for <linux-um@lists.infradead.org>; Tue, 22 Oct 2019 21:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RYwEGq1s3lu554rYxj3b9sgeFzKgse8fRmDyRDHGxrU=;
 b=XSilcCeGo51l4VwTTlDTrPuQ8oSWJcegDMtbUyNtpUXsPEezbaGD41hsqPsNueenbe
 NuX4eAttSqCV+Nqr34++PQ7SNOgVIWcQOeHP2ELK2in00NuNEDCnpJTp3dMZ4zZFYeZh
 HOon2KwhwYSRDTx63UpdqMyGSoKSaJ4IHIL5kBmsrVw6iydQy/xyyavUmeDpiVNpYrhS
 B75ElkqWOCzo31nudjDpsqRC36MEA3kX5QlIt5J7pddjab/U4N9Mr0F+oD0n9Lf3MpY2
 5fMu4RVIBGr3vmEjZau82mTpDFmWK7NOkdUv21lagXiKhmQkcGiKX7D3AS8uJzQ02lOY
 IQNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RYwEGq1s3lu554rYxj3b9sgeFzKgse8fRmDyRDHGxrU=;
 b=GktixFezVtd54Y1d1yqYzPs75dsNswKH5uzBk2THy3/VMrNM4EaxrsYEj1AIkpcaVh
 461LPP56tpdZJyzzTdnOf2MnUV2JP4oJcvJtX+0PPvjnmlVlBb/mhfb4/fRb0JcPgcSg
 EmfmeEjaYSH4GgDlQ5z4u4vQvrGGdwVveDO06OT/7jNrXwqsEK/5nXR4kKX6VXpKZ8zE
 iDqbXhYZyZ6KhL4+Z7YQdzqBgACiA49erYhFTscDvos4jlwB2Om1abgEn1ul+cb2XTTP
 87Sb4lz1o2C6ziOoQ2JYSpuou7o+JwWM9gBQZtx5WA53uJX09UXnE2eKmsG7WKCqu94+
 SbIQ==
X-Gm-Message-State: APjAAAX8F1S6tkS5IVDve0obkYe1FRMbMNdC//yIPRHNPSW4Cln0bUQP
 Bn4qKFHwSb+WQj8Fm/FpTw8=
X-Google-Smtp-Source: APXvYqycQZ38Bh9ln/9JITBEYX8IRV4+epzXDlVFZnO5UH50knvNYtmMqBxFhKwmqr8TzjjSguV7Ig==
X-Received: by 2002:a63:8443:: with SMTP id k64mr7914198pgd.307.1571805544648; 
 Tue, 22 Oct 2019 21:39:04 -0700 (PDT)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id ay23sm4061041pjb.0.2019.10.22.21.39.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 22 Oct 2019 21:39:04 -0700 (PDT)
Received: by earth-mac.local (Postfix, from userid 501)
 id 0D538201995828; Wed, 23 Oct 2019 13:38:54 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC PATCH 27/47] lkl: Android ARM (arm/arm64) support
Date: Wed, 23 Oct 2019 13:38:01 +0900
Message-Id: <90e3c9dc2e9b24f2b94b634191e198b0340566b0.1571798507.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1571798507.git.thehajime@gmail.com>
References: <cover.1571798507.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_213905_864524_D3703D6A 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 Hajime Tazaki <thehajime@gmail.com>, Akira Moroo <retrage01@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Initial attempt to run an application with hijack library on Android
platform.  Tested mostly on Android 6.x and 7.x.

The build process assumes that the android ndk toolchain is installed in
a host system as circle.yml does in its test.  arm32 build uses
alternate linker, stored in tools/lkl/bin directory, in order to avoid
the link issue (issue #59).

The CircleCI test infrastructure requires to use ubuntu 14.04 for this
test.

* Limitations
- aarch64 isn't tested on circleci due to difficulties on aarch64
emulator.
- bionic libc on android-24 emulator (arm32) doesn't call destructor, so
some of tests in hijack-test.sh fail.
- net.sh doesn't properly test network related issue.

Fixes #59.

Signed-off-by: Hajime Tazaki <thehajime@gmail.com>
---
 tools/lkl/bin/arm-linux-androideabi-ld | 1 +
 1 file changed, 1 insertion(+)
 create mode 120000 tools/lkl/bin/arm-linux-androideabi-ld

diff --git a/tools/lkl/bin/arm-linux-androideabi-ld b/tools/lkl/bin/arm-linux-androideabi-ld
new file mode 120000
index 000000000000..4194d24c4b5c
--- /dev/null
+++ b/tools/lkl/bin/arm-linux-androideabi-ld
@@ -0,0 +1 @@
+arm-linux-androideabi-ld.gold
\ No newline at end of file
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
