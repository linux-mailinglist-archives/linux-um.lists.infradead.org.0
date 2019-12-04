Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 943621136E8
	for <lists+linux-um@lfdr.de>; Wed,  4 Dec 2019 22:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3ftCaeRn/eNBAU5PXaV8lawLpDrQeVbZkITNCj7at6U=; b=g8HBt2/wyz33e/
	2nS5RtRB+XeyVSqNQmXnf+pDSi/0sK8BsCWPGA1ZkNLziFEw7iDR9Srg2TBf1Dv/fNyT4HvIyo/ei
	/iLcohOUqHlikREjXj1/15xyt+pVcMktDN1HkhIhuf2h4G0J1nTnayvEwzI764RyEij5YOELdxpzz
	29XsQ0ifdA4eUnJcfKix2+zhKnODiSTiTSg2TVXrKskG6hbmpZdNm5ult6a5P1AB5pM5I2a3n7345
	oxNe/9fKxD1UXLEgDTPoKJkuHYrcqnt1IwcMK79Eic6PSM+yU/IUS4MOv6N/y1CNQBV6ElnMmfcY7
	77ev5jBUFOj6DRZ2q4vQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icbtU-0003Pu-7a; Wed, 04 Dec 2019 21:09:08 +0000
Received: from mout.kundenserver.de ([212.227.17.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icbtR-0003PN-JX
 for linux-um@lists.infradead.org; Wed, 04 Dec 2019 21:09:07 +0000
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MvJwN-1hmIQ83X1N-00rDvP for <linux-um@lists.infradead.org>; Wed, 04 Dec
 2019 22:09:02 +0100
Received: by mail-qt1-f171.google.com with SMTP id v2so1223207qtv.8
 for <linux-um@lists.infradead.org>; Wed, 04 Dec 2019 13:09:01 -0800 (PST)
X-Gm-Message-State: APjAAAXJdGGtYtutlt8ZdFcPvGPz2JlMQE7JS4IgOyf/5FJ8jJRl/jVu
 l8LPcrU0CQP3vkt0xorJb4CkwCVlyDXaFtycPQg=
X-Google-Smtp-Source: APXvYqwSsu0PsWppSdb10FaNSe/6M3hSugRW7Fhr6kHoluQ48W7Xc6SGLBVEhG9kxWyRK6P2mwQMD0p/vKrcHsWbY58=
X-Received: by 2002:ac8:27ab:: with SMTP id w40mr4717111qtw.18.1575493740656; 
 Wed, 04 Dec 2019 13:09:00 -0800 (PST)
MIME-Version: 1.0
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
 <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
 <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
In-Reply-To: <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Dec 2019 22:08:43 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2A13pfvRRvpamx1woUz0CZTR3gvt_P1-ERqH+QtRATig@mail.gmail.com>
Message-ID: <CAK8P3a2A13pfvRRvpamx1woUz0CZTR3gvt_P1-ERqH+QtRATig@mail.gmail.com>
Subject: Re: 64 bit time regression in recvmmsg()
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-Provags-ID: V03:K1:u9ic88FSbgXP3WBH6Pw9kPmnH/n0CwOhoGQKSS3V4ikn8btNYEv
 ABbnQwuL58E6y+bdnME5UYJwxs1WeMoNLQaquenrGDIN+lDwyUdCWdpaaCO7gz015N5CruP
 dsYPKcKRDTirhuvuIEtTrlo6gXnSDNYGSdoHP9IgNj5DXA3cnubFy4FfCNF06ye8N2iqYZE
 wJaVB3zc1wWSb3f7GKlJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:00A8vU6NWG8=:DJN/52KuQw6UxdYwcfMPwh
 V7eMZ6Tetpw46Hiz0x4bqWBwi7esdkRl4oEskPl0BWgs1vbAx9JhSG3zEiPYEz85nMdnXAV8v
 eTS4WX03udpEY4OZNLbYlOHp0ddk4A7bd85D0fzGp3+iaBJdvXgXQFut5th7dW2Hcl+UVFMsO
 ID4pLmeErnUlkEIypbvQIkbN0fz9RH+TzGnlSw31cWayhlAM/It991V8bKO+CsVWeng2czuov
 3U3IP+DER04Q9ASs1OGAcBgm4czSXIEg/LocOGE4AnaVX31LyUFpa4TwvFv+36cBOyK3vbBx8
 QM5gVe8eSr7n4eAgteVDGtsJJbMStHGSn09ky9MDHNWMPJYiViMG+WZWfvFRqbmjUsOORK7cM
 yEzDjWRLtstbg6huHdC7RX9w2zLqgvP0NDxBG7gPyh2Ec4pvCmO2/8Ewi2jhL7M2In/qwn7+8
 D+abqOd8fBpG0h8rWY4wjMkKawFlcBaTysqejDqDoWz51XC9qAO0PkODwZXWckcECxqB5cK+d
 KwtGOYaEdg2Ncomqtw3t7hPCaHI5l00jgxnfwpOvfyOytL0cxJXmoGdDgDge/GXsDHdltJMr8
 Si9H82vP7dpO/zqgEBCgeiN7V5vKOgckqT0qmNadSadWDrXo/M2rmO7keGUR2DjejIYsbhaxn
 nKvH7J9ut1hnvxaiApVENRelFfZmt7tKhdS4vwEfbcHv8B3iTXROypae0orOTiYvV5zoVpRP7
 LmcuxtTwMJNDDc/CSUuLMY2Oza8O24I79Bffy0chos6e6yIj2+P1iHRQG9brp8LEH6bZiVR/E
 q0BTHDDKs04p45hCe83HKAFdOMI6lRQREiXGERdyZLw/qOvMAu6lJIj94EkPRSD5oWb/eewSN
 n5uAEl3nA4FWaN06uPJA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_130905_940278_BF37562D 
X-CRM114-Status: GOOD (  23.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.24 listed in list.dnswl.org]
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
Cc: linux-um <linux-um@lists.infradead.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 5:34 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
>
>
> On 29/11/2019 15:17, Arnd Bergmann wrote:
> > On Fri, Nov 29, 2019 at 4:05 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> >> On Fri, Nov 29, 2019 at 3:34 PM Anton Ivanov
> >> <anton.ivanov@cambridgegreys.com> wrote:
> >>> Unfortunately, it looks like the recent year 2038 have broken
> >>> compatibility for one particular syscall interface we use - recvmmsg.
> >>>
> >>> The host now occasionally returns -22 (EINVAL) and the only way I see
> >>> for this to happen looking at the source is if when it gets something
> >>> bogus as a timeout.
> >>>
> >>> I think I have eliminated all other possible sources for this error.
> >>>
> >>> The picture can be observed when using a 64 bit host 5.2 kernel on a
> >>> Debian 64 bit buster userspace (glibc compiled vs 4.19 headers).
> >>>
> >>> The code as it is written at present retries and by sheer luck and
> >>> perseverance it manages to work, but this needs to be fixed.
> >
> > I only see a single call to recvmmsg() in arch/um, in uml_vector_recvmmsg(),
> > and this passes a NULL timeout pointer, is this the one that broke or
> > should I be looking at something else?
> >
> > Do I understand you right that the regression is on a pure 64-bit system?
>
> Yes.
>
> 64 bit host, Debian Buster with the stock 4.19 replaced by a 5.2.17
> kernel upgrade, 5.2 and 5.3 64 bit UML also running Debian Buster inside.
>
> It sporadically produces -EINVAL (-22) from the recvmmsg.
>
> I went through the allocation and deallocation of the actual mmsg
> several times to ensure it is not that.
>
> IMHO it is the timespec conversion somewhere, but I cannot pinpoint the
> actual cause.
>

I've looked at the changes again as well now without finding anything
suspicious. The only commit of mine that significantly changes recvmmsg
is e11d4284e2f4 ("y2038: socket: Add compat_sys_recvmmsg_time64").
I tried reverting it on top of  5.2.17, but that causes a lot of conflicts.

The best suggestion I still have would be to check out the kernel before
and after this commit, to see if it is the root cause. This one was part
of the linux-5.0 merge window, so right in the middle of the range
you have identified.

     Arnd

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
