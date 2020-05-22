Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969CB1DE540
	for <lists+linux-um@lfdr.de>; Fri, 22 May 2020 13:20:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Message-ID:Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Date:From:To:Subject:
	Content-Description:MIME-Version:Cc:Content-ID:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vehje9slRe2Wo/xKfM9KeVH/yXnzQ5fFv+4ZWV1etgA=; b=CZqGP9VnVmF4mv
	pGyVQA4RmwDz8IJQodFOiaeCnLYMjpr0Ddl/jjhpV+2jE+iZC9DlciiUuFqWrAFXL1APHoP9YWsXQ
	3wWTkwjXFk//lRhKKaFnrv6ABIYoBy8gDKEpO34QxIffQTzc1NOP0g+2TR1neTc4Lm048arKWkqNl
	sq8lC8yoxPzkqA95TxpeJ+NWMQI0Y6nwQYNNXRK6dFu9vry78/Wwlmy5NBgfG6NNCIHTZ7DmnHoO4
	wrSy6A/wwbN1TNtr4XMWQyYuaLUj51smaQDBBxxohaOGNXtTNUkxVC3ZEQykw6jj60KMTQrYfs5wm
	a9Atfb1wey9g+Pgahb4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc5io-0008F9-8i; Fri, 22 May 2020 11:20:14 +0000
Received: from gproxy2-pub.mail.unifiedlayer.com ([69.89.18.3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc5il-0005pK-3K
 for linux-um@lists.infradead.org; Fri, 22 May 2020 11:20:12 +0000
Received: from cmgw14.unifiedlayer.com (unknown [10.9.0.14])
 by gproxy2.mail.unifiedlayer.com (Postfix) with ESMTP id EE0721E10AB
 for <linux-um@lists.infradead.org>; Fri, 22 May 2020 05:19:46 -0600 (MDT)
Received: from md-in-2.webhostbox.net ([103.21.58.231]) by cmsmtp with ESMTP
 id c5iKjywC8Kxvrc5iMjxr9L; Fri, 22 May 2020 05:19:46 -0600
X-Authority-Reason: nr=8
X-Authority-Analysis: v=2.3 cv=VrYN/d+n c=1 sm=1 tr=0
 a=E49WYRDGShHW1wXSpfSXcA==:117 a=FEDQvOWywwr6ot65Pts/TA==:17
 a=dLZJa+xiwSxG16/P+YVxDGlgEgI=:19 a=HpEJnUlJZJkA:10:nop_no_mid_header
 a=_4xEVzfzgbUA:10:replyto_email_address_1 a=8nJEP1OIZ-IA:10:nop_charset_1
 a=x7bEGLp0ZPQA:10:nop_freemail a=sTwFKg_x9MkA:10:nop_rcvd_month_year
 a=n2NaqtsG6xQA:10:endurance_base64_authed_username_1 a=K57tCgj2AAAA:8
 a=ERelEVEFNdIaPiQXLokA:9 a=DTrWy-KMkTv1M_DC:21 a=6XKv20qmviL99po8:21
 a=wPNLvfGTeEIA:10:nop_charset_2 a=UYHNfbjoBqsA:10:uccc_2email_address
 a=q5Vjzk8818JP_bk5kF59:22 a=pHzHmUro8NiASowvMSCR:22 a=xoEH_sTeL_Rfw54TyV31:22
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=diggysys.com; s=default; h=Reply-To:Date:From:To:Subject:
 Content-Description:Content-Transfer-Encoding:MIME-Version:Content-Type:
 Sender:Message-ID:Cc:Content-ID:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ScB+1sI5wKcrRRXa752b0uerpLquSIiqU9I4OLmQ8ic=; b=PR18xp4QM04DdNHtBS2Y+utZC
 lcru4/aa40wOlcrSwip9lq6ho9uX+YdfbIYI3QFzPnDtcZvp26lRYlMND44gJYlMiBcHuaXkU2vJj
 CHUcyY3eKgrg3N8D/JRaMoWOByzDz1AWL3U1YVRVmMY3LCuf6XhobM3rxp1tnVNdi3LNLLoZLXPtT
 pBL1tg46MjFILzO2/dXOmvncRuKQGwGodu7+otq5Ri0/Hd+rOSRnmmHjg8uQK5bypWG9Dzh/Vdq2e
 TT6TDll0qan7O7MoMTjmLX7qMLreoMOF+M74I/C2bc9UTDlgPzV+FauX/AkrFAUh5Wfjr7mW0jFGw
 qnlzLNb9w==;
Received: from [205.234.159.68] (port=50025)
 by md-in-2.webhostbox.net with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
 (Exim 4.92) (envelope-from <raj@diggysys.com>) id 1jc5iJ-0005iK-Ta
 for linux-um@lists.infradead.org; Fri, 22 May 2020 11:19:44 +0000
MIME-Version: 1.0
Content-Description: Mail message body
Subject: Reminder - [Fri, May 22, 2020 at 10:00 AM]
To: linux-um@lists.infradead.org
From: "Tata Power - DDL"<raj@diggysys.com>
Date: Fri, 22 May 2020 04:19:44 -0700
X-Priority: 1 (High)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - md-in-2.webhostbox.net
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - diggysys.com
X-BWhitelist: no
X-Source-IP: 205.234.159.68
X-Source-L: No
X-Exim-ID: 1jc5iJ-0005iK-Ta
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([205.234.159.68]) [205.234.159.68]:50025
X-Source-Auth: raj@diggysys.com
X-Email-Count: 453
X-Source-Cap: cXVhbnRsMnY7cXVhbnRsMnY7bWQtaW4tMi53ZWJob3N0Ym94Lm5ldA==
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_042011_438404_CABED92F 
X-CRM114-Status: UNSURE (  -4.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 4.9 (++++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (4.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [69.89.18.3 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [69.89.18.3 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_REPLYTO_END_DIGIT Reply-To freemail username ends in
 digit [dnyy6800[at]rediffmail.com]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 MISSING_MID            Missing Message-Id: header
 0.0 FROM_MISSP_XPRIO       Misspaced FROM + X-Priority
 2.5 FREEMAIL_FORGED_REPLYTO Freemail in Reply-To, but not From
 0.0 FROM_MISSPACED         From: missing whitespace
 1.6 TO_NO_BRKTS_FROM_MSSP  Multiple header formatting problems
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
Reply-To: dnyy6800@rediffmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Message-ID: <E1jc5io-0008F9-8i@bombadil.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Dear ,

The UN and the  (IMF) has chosen to support 150 Private individuals and small scale business owners from
Pakistan,India,United Arab Emirates, Bahrain, Qatar and Africa.

We have arranged $500K USD  which will be paid to your bank account over there in your country.

In this regards, you are to furnish the requested information to the Directorate of International Payment and transfer.

Contact E-mail:    dnyy6800@rediffmail.com

Best Regards
Director of International Payment

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
