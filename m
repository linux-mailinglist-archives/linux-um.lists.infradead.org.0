Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A03DD11581E
	for <lists+linux-um@lfdr.de>; Fri,  6 Dec 2019 21:07:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaOixWhFL7BJq5QKSNAjYAuGaQOjbfD2sURfVq5FOZ4=; b=sevOrC5F0tpB/j
	1gT7pwpEoDUjcOa2iHioYbV2YW4FAG3p4n3zjw8qDzKm7/24+FigP16tk8dTibNxzIZjH4uJoOSoz
	C9EMXj63CvqiQhxz/uuJ+VrI94LVbj9jtsUpcanPjDooTemIUMTW/b8glLnqgnZRicXzrJYJ7tY4q
	a6UlVEbwiGl2mWyMVJJ6FUbgSUtrfkwldEXHeTQ279vP9wGy02C1k73R5jDPKcAzYOt81+9+KqkyA
	sb3ZVw9cQ62SVFFt3xPbFkiVqJ7Pl27ASmv8kguJuZ8ze9bctHoTK8bEIsH89LJPLPQeVhTDBzvfe
	n51OkStXcEjFdvX1gf5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idJsl-0007Gq-Uf; Fri, 06 Dec 2019 20:07:19 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idJsj-0007GR-1B
 for linux-um@lists.infradead.org; Fri, 06 Dec 2019 20:07:18 +0000
Received: from mail-qv1-f42.google.com ([209.85.219.42]) by
 mrelayeu.kundenserver.de (mreue108 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Mz9hF-1hqZ2g0Ilf-00w9qv for <linux-um@lists.infradead.org>; Fri, 06 Dec
 2019 21:07:13 +0100
Received: by mail-qv1-f42.google.com with SMTP id t5so372660qvs.5
 for <linux-um@lists.infradead.org>; Fri, 06 Dec 2019 12:07:12 -0800 (PST)
X-Gm-Message-State: APjAAAWbC8ueQ6vrYG520OKSCGfdOqldwbpwiRag7j7wun2z69KuBaoO
 jNN2ggMRmHvkQ1Rsm49zyh/rlLa19GWNYCXyk8k=
X-Google-Smtp-Source: APXvYqxFdgMVCJfcdnyVBpyqkGZouCT7daBjG6tTy6sJOANjEdC+aU3LWaFMNq1muXitD4d8MmDpbj3kta730stfB9I=
X-Received: by 2002:ad4:4021:: with SMTP id q1mr9645845qvp.211.1575662831798; 
 Fri, 06 Dec 2019 12:07:11 -0800 (PST)
MIME-Version: 1.0
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
 <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
 <a5b9709d-b93b-46e1-ab18-a94ab921ccf7@cambridgegreys.com>
 <9dc1be66-5c55-8b3d-875b-4e1206914e78@cambridgegreys.com>
In-Reply-To: <9dc1be66-5c55-8b3d-875b-4e1206914e78@cambridgegreys.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 6 Dec 2019 21:06:45 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1KcRcpUB2PdA17tnHN_dDs2Y02zPtkgM22Z-JdugAkfQ@mail.gmail.com>
Message-ID: <CAK8P3a1KcRcpUB2PdA17tnHN_dDs2Y02zPtkgM22Z-JdugAkfQ@mail.gmail.com>
Subject: Re: 64 bit time regression in recvmmsg()
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-Provags-ID: V03:K1:4b5jXABNZDLsWubJw57l1T78pRx8lvlH9tCWPyF0D2QDg+5vsAl
 VU4sL3gvvPsabR596V6N6O639ljcPg88FKivQ75P784Lnx69tQfdSzF5UGSxEM8E3I0lpF8
 NLm1dRTeeehIqA7QK89r/X4sYZeZ9x/HB5mAN7vKJ72MC+0hEBfY+mioAyf/WsoeSGiC/dn
 +UvtHXyRo6I1wFqtv6wSA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:+mGksiOv47U=:96NEr0fHgyKYth3n1Zb6Ym
 bX8SBtiJnSxzZh/zUaNxOxf3BYkyFc+CCY+Xfx5BjO+86fdFiFG8dID8T6MmiDOMp4O7gTupO
 Np89zQBuhmVHwKjku1+/lXrolROPwcw72gLaX1NfeHcUHLYlDkv0vY4IhKbWUdoam9rxfL7Ey
 qYfaePcCVqASoq7UAq6ekzbjMt8seFPLo6GIcFj6pjueWTobKri/XIWaapo8s/T9R+OkjaL/p
 VoResqUTlSgEHqzfESQRgDdMyfs2y3IKCvdny0HU5LWv51bD2rdF6e9MT0vHdU0NYs5oCY/ik
 r3KIeedJXgyHg1q2+EO1qi8EcenQKsJFwiAlCxsBLjPBfJqgd2y3AniopXJsF+jYjSTt+bR+1
 r+SFf+0HeqLkyXynfCDMbk86bmJP7YEgefMAIQkLc35nJ6g8kzAkThHnbtcOkxzU0SggO9O7w
 rMxX0dCYLv7zNKDTZGspNpTrrLZ8AWKhJMW5VrJJFh4TsWoNg6XJWpNzI5fFO0YmtsVgVaXoM
 BpwacgDadyd/8ZG0uDgqzs6rB6Tvf6J6RrJXJRKgiIEcl3+pbhqM8N4kOSml38ldh/P9qCYb9
 13XL6qpE5LBCXJOHIBWHZvBMgCaaO8vefHJVGLSm9b5UUEcI4EHWUAFh7gGIGi3HDOT5y9lQb
 QRE2qNgZABj1SEMvcvYqXgYrQCwuzgYZz3mklJtaEOzrY87dloZcQtwMHnHOp1Y3Jt/MS1pRi
 Wo2uJeCnh5JQISILYmVpMys1gsBFarlkoEKaBDUz6NHIb7oOTczPHytC7iH6QL+MvrHG6vve2
 D0KMkjNe7BjY3ZEZ62kWquiG2RhQzahmngyyTxFy74lmc1dJWIITdyfcXbwdj4camlg+fkDQW
 IE2w6ddDciJL6YsSJSfQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_120717_370635_A96986A0 
X-CRM114-Status: UNSURE (   8.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
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

On Fri, Dec 6, 2019 at 6:50 PM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
> On 29/11/2019 16:34, Anton Ivanov wrote:
>
> I apologize, problem elsewhere. I have narrowed it down, it is a host
> regression at the end, not a recvmmsg/time one.
>
> The EINVAL is occasionally returned from the guts of packet_rcv_vnet
>
> https://elixir.bootlin.com/linux/latest/ident/packet_rcv_vnet
>
> in af_packet. I am going to try to figure out exactly when it happens
> and why.
>
> My sincere apologies,

No, worries, I'm glad it wasn't me this time ;-)

     Arnd

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
