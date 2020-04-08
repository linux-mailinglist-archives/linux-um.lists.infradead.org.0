Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428161A2236
	for <lists+linux-um@lfdr.de>; Wed,  8 Apr 2020 14:40:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQAL+j3YkrsdirVR4JkIs7PZsq61bNgOfCJb3zyvAFY=; b=e4r4wQkd6WFWCV
	KAISIpBUVrxfgb7snJa22txaPvdXkNp+FKDoudOIw98LDzi80Vq1EROkUKq8D4c1LLU9sKMRGt8IK
	uAi+0dbP+ser+uTz/yEbBtkfLhCdzm9IqBgkjLR2EbEeUtTtFhxoUdDYal6+eWBcK29x6zS/DQGEl
	eEihiF4BMdyZSoKj6Bfvus3ZxHk7i3olnH3EmMbG0SUzD6DnYv181fJ6Qqy9cgFdHOnNz9XNAowLe
	0CSbYENlh8BF0SmhaH6qR/Va1r+ne1iVUjG6varncZDfmbv1EyPSBxHH2cl3Wy9D/tLgqpyk0mfR8
	G9ED/357DTjrPGcoqRow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMA0J-0005z4-Ti; Wed, 08 Apr 2020 12:40:27 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMA0G-0005xz-L8
 for linux-um@lists.infradead.org; Wed, 08 Apr 2020 12:40:26 +0000
Received: by mail-ot1-f65.google.com with SMTP id x11so6599954otp.6
 for <linux-um@lists.infradead.org>; Wed, 08 Apr 2020 05:40:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=cc/NZg0N+NEE2M4Hm55SRxg0t2CG8zKY9U0qGv0JVQ0=;
 b=GzDGdyI6C//5np3rZJSj2b6ZTQHAHd14pJuYZikG6sneeoJZ4gmKhzNbOVUuitOhFm
 mvZYeWYIEOrcy73vNOH6STMc6IglakaL4VCzMl4jZBnQC6TM5zkFT9r0iS+1b3dQ/HqL
 9+X0SJjayruXlPZkQIu85HilTPkdGuc+MlAP4pgRtk234sl47b8kym8INHwHDrbE53jW
 i2ZoryErh/HHRyoYCRO+lz8rkdQqEY44bHAPHfRujxI5SQf6HXhxX3lZP6usq5x2DQ+j
 ZuHrKGBLsi98DCWpzyefbkGu0S2Hm31lPjrahnH1qe12OFnGswPiyS2XBQitPcQ0gSmE
 AXLQ==
X-Gm-Message-State: AGi0PubrTB2mwLisuctBYN000D3K4Zcrz+R2jjliEXbC1yGpWF+AsBmr
 QyaLK8Z0U6wOvzRaduBXXYQnoZaWOTuSglsAb8Q=
X-Google-Smtp-Source: APiQypLo1EWZ2b7VuBSACNsCllOVuz6os8aRMGod71XHvVcBlle0X/mbnyGsnihnH6XvkQ+E/VQRpLxoIa2XNdkCImA=
X-Received: by 2002:a9d:7590:: with SMTP id s16mr5434794otk.250.1586349622145; 
 Wed, 08 Apr 2020 05:40:22 -0700 (PDT)
MIME-Version: 1.0
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
 <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
 <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
 <f64a6f99-8e20-9825-75eb-358054935807@kot-begemot.co.uk>
 <ac5e36bea0200b8613849ef529d84de54b3afe70.camel@researchut.com>
In-Reply-To: <ac5e36bea0200b8613849ef529d84de54b3afe70.camel@researchut.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Wed, 8 Apr 2020 14:40:10 +0200
Message-ID: <CAMuHMdWTOg9MR73qUEFtDB4fsV0Q1Li4+ZH+cQCfzxwXw2jBtg@mail.gmail.com>
Subject: Re: Documentation for UML Vector network
To: rrs@researchut.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_054024_692380_4D343695 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [geert.uytterhoeven[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Hi Ritesh,

On Wed, Apr 8, 2020 at 1:05 PM Ritesh Raj Sarraf <rrs@researchut.com> wrote:
> On Tue, 2020-04-07 at 17:36 +0100, Anton Ivanov wrote:
> > I am happy to handle proposed changes as pull requests.
>
> Thank you for following up on this one. There's one item I felt could
> be expanded. I created a PR for it on the Github repo.
>
> I felt this was worth documenting because UML's prime selling point is
> that it can run as a normal user.
>
> https://github.com/kot-begemot-uk/uml-howto-v2/pull/1

> Netowrk configuration privilege

Network

And then there's slirp...

Gr{oetje,eeting}s,

                        Geert

-- 
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
