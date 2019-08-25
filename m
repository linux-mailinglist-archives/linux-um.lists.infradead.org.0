Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16FDF9C2CC
	for <lists+linux-um@lfdr.de>; Sun, 25 Aug 2019 11:55:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=snoOkPf9b1k8rzuNmlFzKDf4ifkah5k73h//585E+xU=; b=KooV00/gIOPC6Q
	pE7EX75X+KyRYOjO1oUDX8hjRsi+CkLkbZ47ByeqEtv9PDyhwpPSqyzll7nWvfghzIMl2/MIcikd5
	l7wryfOFjwW3E2Zoqwv6tDGrlB+ASsXbPzahq/ptMKGRY3GpxPNCxxCc7o9wlQ3Me9vfihS7viXNn
	4x/zD8XNw8vo/BSYgeW4QN7ElK7sGmjs3znWIk0Z+2N2rTH9QL0kdVWWe3+jhEk8usOfu/X0XTAJM
	rOztv7rjLfR951BWn9gLX5Nm3XGKLQRZtWHH7tg6Ejaao4qnhCWgpG2/c1+Ce7TfSME5SHh3KmjNj
	u/UfIVRL5/c1CisEYjbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1pEh-00088z-Q0; Sun, 25 Aug 2019 09:54:59 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1pEd-00087j-Ul
 for linux-um@lists.infradead.org; Sun, 25 Aug 2019 09:54:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1566726894;
 bh=ZH3ktvFKDfIjfvG3edJxG43YcDL8YeOfATl5KQTWvBU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=McGV6REK6t6Omy6nk7Wy3wmKkbQIfblJLBKy8szAuHufuk6hYE+hoBkaFe82ePrGH
 ViKgTL0MItmUgqv3BKt29br/rot9a0BBCIsxR9gVPUf7l9BS2K2MH1h22ACD5h6u+k
 UQ8txkmfZARToBsoldJ2jvklYkZK0/05xGzQPC0k=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([82.19.195.159]) by mail.gmx.com
 (mrgmx101 [212.227.17.174]) with ESMTPSA (Nemesis) id
 0MRCCJ-1hePfW01E7-00UXKM; Sun, 25 Aug 2019 11:49:33 +0200
From: Alex Dewar <alex.dewar@gmx.co.uk>
To: jdike@addtoit.com,
	richard@nod.at,
	anton.ivanov@cambridgegreys.com
Subject: [PATCH 0/4] Add SPDX headers for most files in arch/um
Date: Sun, 25 Aug 2019 10:49:15 +0100
Message-Id: <20190825094919.4731-1-alex.dewar@gmx.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:OEfsTMCMMRvhQOVJAIlqaPmi08JB7rSWVD9OZUgLMN0a4f10BAl
 h7BJHk17LR4qf8w4skPsBSsa6oKJOGyKI6bKNv24Gp6Tpd7GpzhKLX2KUDtVKdlyqBUXirq
 MQ0QllMzlNeC9jglMk/ExucuDdhPKbIUZl7Bpa7DwfUJNSklJ5IDuYzLWvdZf8rl2yBl/ID
 C3SuwTnpHSdGhLR5fvo9Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:6gVUT1DlOM8=:L6L433OUcq0x3t+w/xjf+W
 IypC9K8VjSXPcmcx8qqKGhLDxK4mud1Ysx4NoqMTsRqjtLE9fWOea3TVXmwyfxJVsUpKnmU4G
 M5pm4wh6EW8HEqhoWWAtfDBQNc5TiBbUcGKjYX+8DKnaAxmEEZiB/i+I/nhlsx5ySqm3HOQ3U
 XrmMzTWEIaqCB5EgX24S1dxDKDITyK1Q4NjU5tqVaCivCv8pX/q7TsApJ0cj/5KYIeOUmMySx
 wTjNHwRke2OYRf4UNc/d6RG1Uo2VwrZtvQot3/9i+3Va7PADb4luhwc/NGBIg8SO/21P4b90H
 jSPdm5v+ArAs2M1orlw4cAIjh8AeDW8xLkc0WxT5kNUXSVPPK8+Uvivqgv3YE+KPrKjZmoIh8
 PDcGX0a2WGNfQy9Fzj2YqOJ8mKm3h1cy+iP+xuk2N+VpseEzLQZHXTcmYcIjvnLPi94ZJIKXN
 BeBl0SuUJg3uxg1BDTPYDdU05vTqCvFNILpG6w96MyY5T25bAX0PsceAfy0p6lffKbOryoGN8
 CUQLffNROb2EoDTAyn3dsWY3aLiGIOQwGe9X3a+JZFwUr9hHSy+RO4D/aZ6V4iZwZUGvQ7bQs
 QWwBOUdNY09O7kSSMgpBe0MMws3RcrzAHnKKR6DH956g0Swe31foNKGQPRGTwNkG+KkivfsA5
 0rBAALG7reKyZIgT1LPfreVzd8Sts4WJZzDpCud5nTQSW6MLT3PQ3PmeEoztwiVzqk3/TZv0Y
 IHRzdkb2Rwk23HOWN6wjaCLkWaINPeXuo/TQZ4Q0UOeUZO4eCQ04nnoEOLNmKRfmAxNOBE5oE
 HfC2LlTmKVjEU911O1aUbw28M+PdChoWGKLegETDHfyPhmNE38Lgu8L11Ad2kBhHJx64MMi+i
 y5QpnX9ZhMJf+cKJpMeOqq7yZDrEGejNufU7az/mXMu48dEI4/550w1wCIZ0GnZPRX7szxEMP
 o4WUlOxwuT9UzUmSdxj6E4vEI65p7YBJ7TNZ94xWnPlpQmXNCUikYaqoCDPVamG/jqvKUAcse
 ea8bghpDzUi9c/sb9PBHorhJPYmhp3+bTvgzGHSqunNQZ8/XOl2BC44M2++pLf9sgbqvnUaNW
 CODALtaZQq9BsN9jsvphk5XO6GS1NgV+O3G9zGdr2E7rrszyC7iamVuJuwEUFCsbzZXO3e+Lu
 MJjKmLrhzz75MlCWc7uKBjcStG82Qp+B6NU/BdjBVB44/AUvB2rp1AVifkSixHkPx8CMOseIx
 OCyIYMN5oMWteSjLTJCDUYECP7PdZo+ozd3dWMkncV6k1E4Z1YJ63oY6Ytd/SdFGmaBCybIQy
 3JlDmsGD2DTiCkn7plRQ/iLGY89O3qZYZwBy7eFDhrYrzZV6ds7LAIDgEbI+S9rOIlDSg7QCF
 mlgoffgHpdoA63omEJCJA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190825_025456_347585_6B8BDB23 
X-CRM114-Status: UNSURE (   6.29  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-um@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Most files in arch/um have "Licensed under the GPL" in comments at the
top. Convert to use SPDX headers. I've broken these changes into a
patch series even though they're effectively one logical change,
because the diff was >1700 lines. I can resend as a single patch if
preferred.

There are some remaining files where there was no comment indicating
what the license was, so I haven't added SPDX tags for those (though
presumably they're also GPLv2 -- I can add tags for them in a
separate patch if you like).

The remaining files without SPDX tags are:
arch/um/kernel/asm-offsets.c
arch/um/kernel/dyn.lds.S
arch/um/kernel/vmlinux.lds.S
arch/um/include/shared/mem_user.h
arch/um/include/asm/vmlinux.lds.h
arch/um/include/asm/unwind.h
arch/um/include/asm/kvm_para.h
arch/um/include/asm/asm-prototypes.h
arch/um/os-Linux/execvp.c
arch/um/configs/x86_64_defconfig
arch/um/configs/i386_defconfig
arch/um/drivers/random.c
arch/um/drivers/harddog_kern.c



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
