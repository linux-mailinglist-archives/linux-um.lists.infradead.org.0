Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A6710D7CC
	for <lists+linux-um@lfdr.de>; Fri, 29 Nov 2019 16:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MuO2V1A95Y+Sh+nLRc88kdARESRRHH925GDGe+CvCAA=; b=ThdcrVxDqLUaVH
	Xz729Qtje4w6SA5o6QUqVBLOSYcvLbHECj9OdTlTZC8uxK8XipJjylbI5KWAXFzCg8MQ9lko5hMeM
	z8cwWwz0bi5e9Aa/2AoQwOC32KDBJ6BuxYXDyao2JC73Vx8QOWUFnwyNShxv98SH5q990MOcc6CXp
	ZMPOge9VqhRXWJiE7SPxhHbQmt2Vn9ka4v3gI3mXt/6ypF0wIRHRmMf4RDLGjiTQFyT5YFjzB+WBA
	4IAVj9A7+BwzoAydZQsU1pNfvB8AiQR9Uf5GOg17EEsZO5ly4wWfixvozsq2vuFlhwYgEnKJkC+no
	/T26nN3+o87C6kT8xvSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iai33-0002Ll-9M; Fri, 29 Nov 2019 15:19:09 +0000
Received: from mout.kundenserver.de ([212.227.126.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iai23-0001UM-Fi
 for linux-um@lists.infradead.org; Fri, 29 Nov 2019 15:18:15 +0000
Received: from mail-qt1-f176.google.com ([209.85.160.176]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1N2Dgk-1hf8WT08WE-013egS for <linux-um@lists.infradead.org>; Fri, 29 Nov
 2019 16:18:03 +0100
Received: by mail-qt1-f176.google.com with SMTP id j5so7644584qtq.9
 for <linux-um@lists.infradead.org>; Fri, 29 Nov 2019 07:18:02 -0800 (PST)
X-Gm-Message-State: APjAAAVSEIym96jopGLXJW1ZC5tzGsntsOAWN849jW8bRFsLE4J4ObpM
 kFcpjiYeZCNpXw5kE+BXUZMxEIskUsLKmj7/AuM=
X-Google-Smtp-Source: APXvYqzH8cZUbUFJvmTCJBRVNZZ7dlgPlyQq//T3wbIoUxgoGbK7kac7wILiXx/m1pXKAmSb5SkCIn5sny/hR3FohH8=
X-Received: by 2002:ac8:27ab:: with SMTP id w40mr1222261qtw.18.1575040681991; 
 Fri, 29 Nov 2019 07:18:01 -0800 (PST)
MIME-Version: 1.0
References: <3820d68b-1d97-8f41-d55d-237d1695458c@cambridgegreys.com>
 <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
In-Reply-To: <CAMuHMdWuiGC4ay=f6M2H=-PLiffavnFSu8CPXE26euAi6aoY0w@mail.gmail.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Fri, 29 Nov 2019 16:17:45 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
Message-ID: <CAK8P3a1mrFgRyh5Fgv-d8Szd2pq0T6Ac7wL3ogeYcf-Uyrg4ZQ@mail.gmail.com>
Subject: Re: 64 bit time regression in recvmmsg()
To: Geert Uytterhoeven <geert@linux-m68k.org>
X-Provags-ID: V03:K1:3hWu2Q0hpWXXh2Qvxs3xDkgfZO5xbmd94u7smjbG9Pxpt/8JVwr
 GqAFDAbyaghLibjc4O7GNt4ccY62ER1k1SB8UqswO+7beay7UIbHfG3KcUU1GU81UpdtiVn
 tg1SChHmJ8mTLUzwtlZy6FRH1kaMkGviH2BP4S7099+9HVSmYMzTmTttis1cVy6GNLPIPt2
 9EEqZXN3twI7/PVksqkbQ==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:38Ld+NND4cw=:WDVacq8s0gqgFBpMBYvOuW
 Yxh6wEy7mtjRg7Y29Vq7BvaD5t3h4VW7VAQUFbxEsPuD5+vjzDDoaFh72qXU8dCjXrCJ44VEI
 gZvVNakICULYgiKX12aK0nZjUYP/OPFgOuvvCk8TZ4sXBCzp2m3uosY7tG0tz01XDoQ2sxmd3
 l+T6O8sMBqkwN7N3Uup+e2ruQDJywixHR+iQQl9svpt4rFPVHvue9kA4Zp8fMia92FyEBSjM8
 N71l6kFmQbhO71undCn32Jrl5zzMr3U4ZLlKbngB4CWtQmC787nL/l12YyT1DYrdVkrWgWy97
 q+Rq7RnAEH9GNF56uLi0zTLXGqQZjN22Qb85sMPjYkBpbDj4w5zaRd+uDb24aFx84CD9on6zT
 zO09J8V8xX3kG3HlN9n5S3VbH8SuaZb52fwiuGe/ARHR/4/qeivHJdNFp+/eVcIGD8uLMUrBN
 aY6q6sj2EayiRWhaQacrPHSkUgteEprdYDHLXZaE57VOotkBoeC2sMNTDZu1s8zaMzJjvxsO+
 pEaJEWdZdds9yCctyVHeMjROrTMZXVjuYkFITqbCFVcjDfGsIT9YNBmNQDMK2CxnXQoUM6Km1
 WUjEJwxVtxwRR75xLq2/wwfBVCAnqVKT/8p/RC3fhP75NWcMiTr8NafbfpKXRHqnB6ygAvxdT
 tVrmBMLozvP/RDHE0D/RCDvuOLo+67uk8YG3/saOt4v0hq3R1FfEW2mWtYrXOHCUwm90LDMj0
 Xs0+zKdcOQTb5SeSi1QWTDxz7mm9TM5tqrgwKvX307et8DOxYEYHev3OM9HEWNYTjAUWanlG+
 us1UIj+D7PlwBfYlZpod6fBF003DnGTZOEuqh+iP+YYGLU/Wx5f4azaYBxNFFxR8fIUkRbiRk
 UpsIuMGvxWhbTEFoXkYA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_071807_823107_4DFB1FA5 
X-CRM114-Status: GOOD (  15.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.187 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.126.187 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 4:05 PM Geert Uytterhoeven <geert@linux-m68k.org> wrote:
> On Fri, Nov 29, 2019 at 3:34 PM Anton Ivanov
> <anton.ivanov@cambridgegreys.com> wrote:
> > Unfortunately, it looks like the recent year 2038 have broken
> > compatibility for one particular syscall interface we use - recvmmsg.
> >
> > The host now occasionally returns -22 (EINVAL) and the only way I see
> > for this to happen looking at the source is if when it gets something
> > bogus as a timeout.
> >
> > I think I have eliminated all other possible sources for this error.
> >
> > The picture can be observed when using a 64 bit host 5.2 kernel on a
> > Debian 64 bit buster userspace (glibc compiled vs 4.19 headers).
> >
> > The code as it is written at present retries and by sheer luck and
> > perseverance it manages to work, but this needs to be fixed.

I only see a single call to recvmmsg() in arch/um, in uml_vector_recvmmsg(),
and this passes a NULL timeout pointer, is this the one that broke or
should I be looking at something else?

Do I understand you right that the regression is on a pure 64-bit system?

     Arnd

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
