Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726C21474C5
	for <lists+linux-um@lfdr.de>; Fri, 24 Jan 2020 00:26:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rFw+98KaiKZDikFmIDrXL3aoVcVUuP0zOOObl3ZbJ0=; b=tJItjfX24ri00x
	XtYlcmm2ZTDqHqNo/LFf1AG2jIa28sNjxLxwlDHEh68ViAbS8AoD8TVbyAG0SNwfzwQyz5JRCduVX
	Uen1SDfuJmJsQsU3EkN/34YzcNN6cx0vCxZ7X+0Vuh3gNnCWY+epRq+4zUepSRa7Y7Wjlw/2DDDIU
	y6m4dZjpaGTyb9S6vRD02+sOWZZ4uXchT3xwC3UTsCBX+UX1I6AEsugm3GT3klyHk2mBUoaSK1PaX
	cySVS1jAW4a9dHGrwrGYXpozuf+5Wm54Vhq1GlzLluOe666PTug2kxFjIkfIoenDxzyNJ/ZK1/0FT
	7h5kbxbWe1ZliEtCYuOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iulrR-0003zJ-Fh; Thu, 23 Jan 2020 23:26:05 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iulrO-0003yW-DD
 for linux-um@lists.infradead.org; Thu, 23 Jan 2020 23:26:03 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so31354pgk.2
 for <linux-um@lists.infradead.org>; Thu, 23 Jan 2020 15:26:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4W28UQlErbB5t4AS0heTRzpi/rx98hbqyEgzItkWb6g=;
 b=n3FX0UCzVuXqvvCwf+bLdSICmWk2pxQ7chxMCCTB2hx42/dMimta3BQBEfPyQ2046Q
 Qm8+4esUf31iOSr2kHqW/yFshxkl6gygYlpIVbuXOuumGNu+lDpV6HJ+RER5kBAfDmeQ
 vdmU0syrs6DKDNGGupYB6Fwm/0fUnmeGHc9jpzbo2z5Kumed7XqkxXhITJCtDdzyuMIw
 M0OkibI6uMSi5pIQA9DNluRUY1L9QR6rU40wEQg+oH0EWcB5NwLDSwBoNCjvMh5eSlAG
 GLTytxkX/JFyIvPaa8kaCTqqErVUeJrwj2pxPOsDcIz1hCcoydlB8k/kM8mD0Riz/RKU
 VG7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4W28UQlErbB5t4AS0heTRzpi/rx98hbqyEgzItkWb6g=;
 b=VZz9/5z3tV6pc5+g/SLN3py8nApEPXLAL7mDgtIWNAJbYpNOJQoqFxe0mYgC4/PW+j
 79qyK1Qoz3LGEk3tDrbWoeIOTYyFiXkb843qwhWiZTI4TEL2kV3XtkKxELtUozm2WFZQ
 LUXh5bkMhmB3S2yINv7a1qL0R5vOiHzN/0PMXnGOM9KipVm87c4ZvzMV2LgPhcgB76rB
 e8LyXJrJ55z1evm6YT/Jrk1e5UjrJOgIH/UDbjzWRV3jQtZr+VXnDOTC41pvWQuw/qEY
 MOZuERpE4kyO6MAf6hZx03tHJV450bBA4oWX5ifiCszj38nZc+xI2+ZRZl3MqXHXCLDb
 1bXQ==
X-Gm-Message-State: APjAAAVg+M7O8nDTOwDOVsP8VnDPlbeuG5Oayaaj+s+ZMkvsVrso/HBL
 OcMTpjEKZbFJYAt2XDbLcO2K5deMlbxOAtnh3npPiQ==
X-Google-Smtp-Source: APXvYqymJno0peJ1TM4oS2RkGgGa2NGhPBBBghYsDeQjjbvRNEzA7mcsVhxszbxtw7GarqhCGy3ao9ADKGGhHyUFWlI=
X-Received: by 2002:a63:480f:: with SMTP id v15mr820061pga.201.1579821961011; 
 Thu, 23 Jan 2020 15:26:01 -0800 (PST)
MIME-Version: 1.0
References: <20191210212108.222514-1-brendanhiggins@google.com>
 <CAMuHMdVyjjZAoO3Q-Vr88fUGFwrn4EoiSxBmG_FV+o87BuBmwQ@mail.gmail.com>
 <CAFLxGvzMf1Fni4va1EM1ta_o7zDjkM8iAr=j+t74+G79wq=XOA@mail.gmail.com>
 <c80a1c56a5a543d2a7174e598919164aSN6PR10MB3039E2FB633AC95CF4279B04E2320@SN6PR10MB3039.namprd10.prod.outlook.com>
In-Reply-To: <c80a1c56a5a543d2a7174e598919164aSN6PR10MB3039E2FB633AC95CF4279B04E2320@SN6PR10MB3039.namprd10.prod.outlook.com>
From: Brendan Higgins <brendanhiggins@google.com>
Date: Thu, 23 Jan 2020 15:25:49 -0800
Message-ID: <CAFd5g45oZrj4MRQzJhujr1pVbOjjcqukAxm3NWTRPwO78UaidA@mail.gmail.com>
Subject: Re: [PATCH v1] uml: make CONFIG_STATIC_LINK actually static
To: James McMechan <james_mcmechan@hotmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_152602_469763_86B7262A 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Richard Weinberger <richard.weinberger@gmail.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 "davidgow@google.com" <davidgow@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Sun, Jan 19, 2020 at 4:30 PM James McMechan
<james_mcmechan@hotmail.com> wrote:
>
> Resent for the mailing list since my webmail decided to try to send html...
>
> I agree that at least the UML_NET_VECTOR is not compatible with static linking at the moment,
> but I was running a statically linked UML with PCAP back in December.
> I was having no problems, but I don't remember if I was using PCAP itself...

I was just going off of what Anton and Johannes said in regard to
PCAP; it seems to have deviated from the libpcap library, so I have
been unable to test it:

http://lists.infradead.org/pipermail/linux-um/2019-December/002548.html

Anton, do you have the fix for PCAP out yet?

> I seem to remember a minor patch I did to fix a symbol conflict but nothing of note.
> I have not played around with UML_NET_VECTOR since I run the normal networking.
> And I did not find any config info with a quick googling the vector version so I just ignored it.

Nevertheless, VDE still causes the linker to complain.

Cheers

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
