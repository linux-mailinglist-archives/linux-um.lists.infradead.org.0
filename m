Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BF341ACB
	for <lists+linux-um@lfdr.de>; Wed, 12 Jun 2019 05:38:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Date:Message-Id:Subject:Mime-Version
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ASHag1OM2we7GpaxLeuIcar/vV4SAbTdhbe6vi94tkk=; b=m4vTCKM5P560VA
	agOM75u3H6pf5vjc2jmeEP4cevf9Gk29bhcA4r1Owj+rD6Nz5F9cKXMg+tc0CoMqu4oBVhLoOTPAb
	ENbfrHvzGjqhi1R01Jjn4zhIFKh2ndwSMa7fI9P2wRAGki9D07mGaEMamoZHkhkbjzD5FGY2bC3F7
	gYwICmCr0pXb366F5xDzxZdr4VbWCV/kYfz+s1gKZC0Gns/sv2dQiVyKrKpX6n/PA+kDYdTrvDwOw
	sS4tl6B/X9K04DRa1Dbx/teiUwlAlUBZbu1wWWX5+XSGm8Xbws/7+fA1yA+TgyASAsKZxVJGjzYQz
	Xx7NuBLUeawyYgcLevug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hau5t-0000PD-1C; Wed, 12 Jun 2019 03:38:37 +0000
Received: from smtpcmd04142.aruba.it ([62.149.158.142])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hau5p-0000No-9Q
 for linux-um@lists.infradead.org; Wed, 12 Jun 2019 03:38:36 +0000
Received: from [127.0.0.1] ([168.205.111.182])
 by smtpcmd04.ad.aruba.it with bizsmtp
 id PfdY2000J3wAGnc01feNhH; Wed, 12 Jun 2019 05:38:24 +0200
From: info@barbettasrl.it
Mime-Version: 1.0 (1.0)
Subject: Security Notice. Someone have access to your system.
Message-Id: <54017416-407E-6CA8-2E7F-44F9663F49D6@barbettasrl.it>
Date: Wed, 12 Jun 2019 06:37:12 +0300
To: linux-um@lists.infradead.org
X-Mailer: iPad Mail (13E238)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
 t=1560310704; bh=WWPzzONnzevTYv6eh4shmic5Ixy3v/C+H/udYTZ5eCw=;
 h=From:Content-Type:Mime-Version:Subject:Date:To;
 b=noAMZE2l7xbJvsu7v3lBdNY1japIKusvY5pIi+Xe4yuAHKXQMC8Bc0xLK7FM0qALR
 fAmW7PdjmdTWoISkphBSZTONwuyNZSLCfQfcCCqDfUdP6TlGPIKaDjwH7G6Nama53G
 9kIWQYec7SOR66ZafO0g2+upGx39wGd0+V9UL1Sc2BVboGwra/GNEzj8Masjj1UaSr
 Sug3c/XervXPqrlQQG5RQg2GWoGHriMeNB8sUWFxZts93C+DZY3YoXo6vROrEQcXy0
 aVqZ68nm9ddL3GytDr5QKjCd0YSG8KyBe9DPg9gRCNhXCa0W1GK2woamXhSKkgInuN
 QsOECkT6EmwdA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_203833_829710_A629B858 
X-CRM114-Status: UNSURE (   3.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.149.158.142 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [62.149.158.142 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 2.5 BITCOIN_DEADLINE       BitCoin with a deadline
 0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hello!

I am a hacker who has access to your operating system.
I also have full access to your account.

I've been watching you for a few months now.
The fact is that you were infected with malware through an adult site that you visited.

If you are not familiar with this, I will explain.
Trojan Virus gives me full access and control over a computer or other device.
This means that I can see everything on your screen, turn on the camera and microphone, but you do not know about it.

I also have access to all your contacts and all your correspondence.

Why your antivirus did not detect malware?
Answer: My malware uses the driver, I update its signatures every 4 hours so that your antivirus is silent.

I made a video showing how you satisfy yourself in the left half of the screen, and in the right half you see the video that you watched.
With one click of the mouse, I can send this video to all your emails and contacts on social networks.
I can also post access to all your e-mail correspondence and messengers that you use.

If you want to prevent this,
transfer the amount of $500 to my bitcoin address (if you do not know how to do this, write to Google: "Buy Bitcoin").

My bitcoin address (BTC Wallet) is:  35T3S5UwefDbA6uaFGDwEzBL2AL8LEbB2v

After receiving the payment, I will delete the video and you will never hear me again.
I give you 50 hours (more than 2 days) to pay.
I have a notice reading this letter, and the timer will work when you see this letter.

Filing a complaint somewhere does not make sense because this email cannot be tracked like my bitcoin address.
I do not make any mistakes.

If I find that you have shared this message with someone else, the video will be immediately distributed.

Best regards!

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
