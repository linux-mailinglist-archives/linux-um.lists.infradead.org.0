Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D6907218B
	for <lists+linux-um@lfdr.de>; Tue, 23 Jul 2019 23:30:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AmsO9g4tWQj4C1XjPCukoiYPVCxMOI4mlWhzp/842ao=; b=ue7AkVMSTLAensjXaTWMUxdgW
	CrRGFbHrukDEpUXNsWhDsNDbRW/dc3aVUqwP/okyHqRlYIgpyNP8ZjU7HeU1dvWQXGVTQ+D7pBhlB
	wyoXkA1XmAkuP46Me7QkAYZFJB/6qpN7Q5FMViRZWvSmQKW6HNEvoaaYmXoOllGqZA66nPDo5HgMS
	tId8l3kG70Kw9BFTdGtnzrfhyPpJpzfOdFUvmSxRsLoVcbzztBetnzNMooWblvl2DI6iK0SQemT4U
	i5kWttB2wD571X4DtmNjOAiQYpoROYRh0nHc8Zo9yZv2MOqk0kGmuaTowjb+2MBSMbdI50v0Re+iy
	X7GpGNUTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq2Mr-0001fy-HQ; Tue, 23 Jul 2019 21:30:41 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq2Mo-0001fW-7O
 for linux-um@lists.infradead.org; Tue, 23 Jul 2019 21:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563917421;
 bh=ToULRC4irrsdH84boQnpkm5KiZJ47FZlgR9fRYxOddQ=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=Mw172/vXJLuMiXnhcNcxkFLc+1aKNWEZ8PiRunLmcf3dhaVRLy3tt6tEfy4Hy2XqC
 PyJ35c47qRSvmmSrJacGYW026ubBeNnkC3r0iI352l8MRe5TksbAyXXfEfq2ZaSc1L
 AXwOe3IbD6QKY7TOSbx6Apv6B+fCU/iCs06Tt8DM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [172.17.9.180] ([87.191.208.243]) by mail.gmx.com (mrgmx101
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0LtVLE-1iWxrd16mq-010plk; Tue, 23
 Jul 2019 23:30:21 +0200
Subject: Re: Build regressions/improvements in v5.3-rc1
To: Geert Uytterhoeven <geert@linux-m68k.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20190723080441.19110-1-geert@linux-m68k.org>
 <CAMuHMdVuVqXnW8SEnpcbvh8agYvPh775rv9tmV9kGUa6Q2wcwA@mail.gmail.com>
From: Helge Deller <deller@gmx.de>
Message-ID: <738c1891-6ef3-8cd1-d25e-b9a36255e3e7@gmx.de>
Date: Tue, 23 Jul 2019 23:30:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAMuHMdVuVqXnW8SEnpcbvh8agYvPh775rv9tmV9kGUa6Q2wcwA@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:T+b1tb8faTODi5y7+U6ZeYg349SPA/Fh6VMkO4Lv68DcHiqWs38
 yMSq6plB/gXOGf08wjD9XUjitvj8jKdC/8/JaMSNHP9vDAOO7Co7tl7rnvZFkj9FzwyC3he
 Osdq0XH55YVvzrSSpZfz5GyKiXcltMbOZz4gbER+z1VPvO52/fBz44TmPn60QnwkG/uiNZp
 Qd7uZwcF8lw5s0lW1uARg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:SryDnYPWR3k=:YfaURXV31fWbWOLAGMHGGV
 Dmnik+n3qAhqkld+yRDUq/ad82uys9dQKsblccpGM1v+nWFWNXHRGjJnWpTHthVgl5MjKareW
 S8+A4ILBwxCub+9qb285MgdDuTPxS7dGZzzs1i1PXNIU4ej6gydgwM3z7ULTsFyJRl8wF1WoB
 Ciz5DIEkIBiRgLcXVj6nyJH3dJGRtqSPguFrXaPSrV/pmj04wTImaGupFmt+NfX1jhjZjXIcr
 DMhTnVxONS3fiOhWtR/1DjnBOcBw26ctyW1tDbpN2jcDeuXM9VjIYVRCYv75waepvsgzx6z+6
 Y+w+9q+vzUpjB64NgLoPSebj8q0PWxcv5LCm5+4zx+WmEhLPdPZBeZ3593O31bsHpcyWwRKlm
 zM8DeFk6vuhWjzB7chszUwcyxFIzn/PowsWGt7KTEenxppLvGxPwYXGj4xyFsBQoN3YhLxyIn
 3VE0LcZj3lyD8jeXPQ1tQI2xy+8m1GNDoLpvwW310SEdE2L7UmtfHZ1C9mspC4HKXI4f5MuLX
 wLPTjfr/7eWbl51HcUY2Tozd1IZXhusmqwm+BOXN2AancGej6DJ9BFL+DQfuOaZBlhgugp4An
 UPf8cUynTng/Rs2/LqzKmQmFYtRBSwc37YTxiJO3cIayyLWJDbGidsCRXBjke2Yn2rQpG1vht
 huUmUsiUoIhg6pB0qZEQ6xIf/PdZc0yPvuesx1caABIUUpM3BECtj42ujta5WGmAhrZbK45az
 s0J9qGk2Pf2ZLZyzOGkrgEKjuYspigu8gz2zY93ySXrp/r3sKgUEhrYtc9ZmYkmwz1K2Z8I0m
 e+IcH6RAD5eBsI/TPmjBiBJnnIEpQ/D9j7EjFzCPIFvRKsU6q1kMfeD+1KecjIzSJo4APWbVM
 y2pUQKKW0TSl0QYD02OZ+XNA8gvg+sq9vXPt5e5ZEnthuujlO0Eeaj2TRtYqKx5yaWUkyjkuP
 G26mwOYKDQHdZnvffvqtvcy+HW7DI5GEwBhXj0VE5yPPHcWfD9FUXXe3KfDV/StdlSwan7SVK
 1ZVRDKGDPYLYW7zOY4L6y0bPCt3UEF7Naw7mqyC7SZzElpiiuBTVJ0jUZNIrfQr6ybEOJqPYZ
 RapDmKg7odABSY=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_143038_603287_15F0CAF0 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (deller[at]gmx.de)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
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
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, linux-um@lists.infradead.org,
 linux-mips@vger.kernel.org, Parisc List <linux-parisc@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 23.07.19 17:39, Geert Uytterhoeven wrote:
> On Tue, Jul 23, 2019 at 5:22 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
>> Below is the list of build error/warning regressions/improvements in
>> v5.3-rc1[1] compared to v5.2[2].
>
>> [1] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/5f9e832c137075045d15cd6899ab0505cfb2ca4b/ (241 out of 242 configs)
>> [2] http://kisskb.ellerman.id.au/kisskb/branch/linus/head/0ecfebd2b52404ae0c54a878c872bb93363ada36/ (all 242 configs)
>>
>>
>> *** ERRORS ***
>> ...
>>    + /kisskb/src/include/linux/kprobes.h: error: implicit declaration of function 'kprobe_fault_handler'; did you mean 'kprobe_page_fault'? [-Werror=implicit-function-declaration]:  => 477:9
>
> parisc-allmodconfig

I've a patch queued up for the next pull request (in the parisc git tree) to fix this:

https://git.kernel.org/pub/scm/linux/kernel/git/deller/parisc-linux.git/commit/?h=for-next&id=f5e03d3a04978d2866f82cb11cc7a6b808c8ce07

Helge

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
