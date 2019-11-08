Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C699FF3F49
	for <lists+linux-um@lfdr.de>; Fri,  8 Nov 2019 06:04:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaahqSrAx9dt2/H7NT3POfr4eyxkT+V/sC4u+74A8hs=; b=fHLYTDosbwsew2
	78JR6Taqx6V+GHsKSi3EV4MxemWY5uHWbRppiNbNs0Zfs1iLaPQDad80VqYd/qJZrNS53l/xGVnzU
	NvWtUa3BIQYTOG3OmMZNGnCEpC3DAs00x03eboLqdKUP+DtPuxjPI07VtdLdK6PH5G4HtuT0eF/M7
	Pg45vpJnulGHVk+fSICl76Ug8jI25/8XzipbkbH257po6c77LjB6SkV2INj9y1CamvuOW9SOQHJ3r
	RFzrH0Er3JHG2AUME46B/Ao7u/3KTFup0IkvamEmOOjZbF7t0Rk66rYKzbF3QaNh1SEbvFCXNdnJj
	voawKDxvt+R0/2c3ax4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSwRM-0003zC-Sr; Fri, 08 Nov 2019 05:04:08 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSwRJ-0003xv-VQ
 for linux-um@lists.infradead.org; Fri, 08 Nov 2019 05:04:07 +0000
Received: by mail-pl1-x62a.google.com with SMTP id s10so3258115plp.2
 for <linux-um@lists.infradead.org>; Thu, 07 Nov 2019 21:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=8AZNr+UZi9FN5KTkWLNlzFX0rObVke+OBsR7u63hpJY=;
 b=uKZLKvVI6po1dkGqIzQlWspBvYyW+h166XEHTI3ZokGBItEW2DtvWqSFxJSWnTbYhl
 kj0/+7cgt2OxXfzHg9GCjYSiFEYapv0bd7Xl+KwmEBxO72I7EcONYN0adv/qWWcNl4bI
 w/HjIaVqbAVf9mNxAytgA6Dcjak1AVyn8H16qB8BIB12S6cDzWkmKqd3xesIGcHWzbjS
 w4OxNdyDG6q6utanheVom6+pQP1hrJTu2n6INSeeHKRDAi1ydMLm/1zrpWi0Ndfxajx9
 c5M1GTmFWF8c1XN0189YYwyCpa2A2CoBEv+JAcaTthcmlKOJATs4ztLRULZjw094enxC
 Db+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=8AZNr+UZi9FN5KTkWLNlzFX0rObVke+OBsR7u63hpJY=;
 b=Q0tBR5AEpm/go1jIYsmN0oQ96Zgt6N67jyij+TRF2QQPekhyHwuD63XEwD3ivzf1gl
 mkGAFPVbAZy87kfot0UVzTRzo5nQsAnihdma1m9/1eGrB11VfVP6EbeMlssMquny9t1R
 8WZ1YgUoFldtbDBgv3al7NZH8TopLnt0BBPdmw8ztKgpU6fffnuRU8L+Zye1UqQ+mpZn
 dQBVIcBDF2gAzjIzcdIpnStqRgUeqWSlUGQC9nxT9zjGU2nCWOnkMZhdrYtqzjUdqjks
 vN322esbkvqzMGqcltoNRrTishjOzKyGyoXT2kTkwbRnUnFTpl1fHNbdipdf8roNRjzY
 MCLg==
X-Gm-Message-State: APjAAAV6TC+hbjnzZ29cxwfEvyqIrEpLO1Ivr9FbrcyUVBbbolcc+P8f
 wEypKJnxRs9oK0a3R58vSTo=
X-Google-Smtp-Source: APXvYqyw8nCSfgOHZ/xkKHHbTznrQfS9zcl3FjL0EKCZjV0fztbGxLiNjIJrqxkp2ptVvi4nQQuB5g==
X-Received: by 2002:a17:90a:5d0f:: with SMTP id
 s15mr10620930pji.90.1573189445009; 
 Thu, 07 Nov 2019 21:04:05 -0800 (PST)
Received: from earth-mac.local ([202.214.86.179])
 by smtp.gmail.com with ESMTPSA id v15sm1293182pfe.44.2019.11.07.21.04.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 07 Nov 2019 21:04:04 -0800 (PST)
Received: by earth-mac.local (Postfix, from userid 501)
 id 9F7B3201ACFE1F; Fri,  8 Nov 2019 14:04:02 +0900 (JST)
From: Hajime Tazaki <thehajime@gmail.com>
To: linux-um@lists.infradead.org
Subject: [RFC v2 25/37] checkpatch: avoid showing BIT_ULL warnings for tools/
 files
Date: Fri,  8 Nov 2019 14:02:40 +0900
Message-Id: <7150a514b3ebc50f65fc8ed328c31df0e999cdc2.1573179553.git.thehajime@gmail.com>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
In-Reply-To: <cover.1573179553.git.thehajime@gmail.com>
References: <cover.1573179553.git.thehajime@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_210406_015864_803CBB72 
X-CRM114-Status: GOOD (  10.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thehajime[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 linux-kernel-library@freelists.org, linux-arch@vger.kernel.org,
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
