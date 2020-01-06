Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFE3F1316B3
	for <lists+linux-um@lfdr.de>; Mon,  6 Jan 2020 18:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PymPiYuJ0j0NPHz4b4ddQyIIc6xlNw4IgznO5TRGrjI=; b=PGsOPJdrA6J2bYZRVh2QCMfYk
	+14qNCrZKSdzxpirz9VOIP72/fEfIcizUhZvhm9BKRGu1auINarJC613UGllaGYEkb4Kmhev0+j//
	UUxmmUprP2U/XWyyQFucng8Zcab63aI0Ayapf3rINo2Ytf+TYT+OnKkaRumXApZa7JhBe0/ux3Z+k
	40K/8lxs8CjljEaiaV/fujN9oTcm72ApNhAGdiI0G2rjTVLrldWFsMVKWXOiAV2hsue0rRoDwFJww
	6RFhBfWVD0XAHXr6eHe/TxzA9m6gBccQ0jKndK8w8NZ1aVxZl9KR1y46dFCB+hfb9yyS1HkXAnYrw
	efc+/NxxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioW8S-00042D-9O; Mon, 06 Jan 2020 17:25:48 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioW8P-000419-2J
 for linux-um@lists.infradead.org; Mon, 06 Jan 2020 17:25:46 +0000
Received: by mail-pl1-x641.google.com with SMTP id x17so22096471pln.1
 for <linux-um@lists.infradead.org>; Mon, 06 Jan 2020 09:25:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=sender:message-id:subject:from:reply-to:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=VDjjqDboI6o1EADo7drkuhCP6N9bmoPGH2CwG5hAa+c=;
 b=kbkTLQQZulqrlzD4Ni2qZPua4KID0ndNb7+G3zM5qQFdheW8af7LB2vYt7NJzLBOr4
 Y0adUnM2mB53ZqdQW3gWwZOk6EwivK9sa4n2ubB8D9857V87UJ7vsJpPgu4yyad4p4ct
 NBIX8HMQlTEdJVMwgnyaefTKpyuZj0fv/kV58=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:message-id:subject:from:reply-to:to:cc
 :date:in-reply-to:references:organization:user-agent:mime-version;
 bh=VDjjqDboI6o1EADo7drkuhCP6N9bmoPGH2CwG5hAa+c=;
 b=P9unR48vuhG1WP2vMR8LkN8dg+YugGwaXLXkeoUY0hWniB/pZbeInsYA81yDLKd/HB
 lTiT9X61pK1LpDSqVx0KTI4OKwax6j2wrOZBh0aC5+nNmql1aZULbNK2wU6H1ChRxznq
 ITtzuGkZQPn5qR38mJ70JpkyjjvEGPdMCWs506w2BV2z5+2QILkqrBuUP/5jQuve6uqL
 OjiSes2agBSGhPrykUnpEQh0vbFiJ4VLGM1aevujum/W94FaN7lyox9Ikxxhu27EUm3z
 IaiRQRobr/FNLYt6Bdhih8CXYvkpU5S7Wd8Jnjdfc2CES/RVKu5vncdE9CrgMx8jHk4t
 1TMQ==
X-Gm-Message-State: APjAAAVREzQz+BxCMBY6iHCn69wIYdw9Jqwjwr+nRhBMce3y/9vOgGFi
 I482H8iU0NotSWRORFXVwsvmyedFYwjVIg==
X-Google-Smtp-Source: APXvYqwMyG9D5KwmgRDRdqCuo1fkg/MVhCw+hhK+d9wnOkS71dM8yo7VUsmtS5RVCQonv5iWvS7RuA==
X-Received: by 2002:a17:902:b68c:: with SMTP id
 c12mr72380250pls.160.1578331543472; 
 Mon, 06 Jan 2020 09:25:43 -0800 (PST)
Received: from priyasi.researchut.com ([157.49.165.47])
 by smtp.gmail.com with ESMTPSA id 20sm57693759pfn.175.2020.01.06.09.25.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 09:25:42 -0800 (PST)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id 7F8A29B6526;
 Mon,  6 Jan 2020 22:55:21 +0530 (IST)
Message-ID: <bb3c230ca486ca8dcf1640c357be8d4025d5109b.camel@debian.org>
Subject: Re: Bug#928924: user-mode-linux: xterm functionality broken due to
 wrong path to port-helper
From: Ritesh Raj Sarraf <rrs@debian.org>
To: 928924@bugs.debian.org
Date: Mon, 06 Jan 2020 22:55:21 +0530
In-Reply-To: <95a2a1cdb323633a0779acaeb0377ed60e7e3afc.camel@debian.org>
References: <451d491044af46fe1d87d10196e24e8e7b076f26.camel@debian.org>
 <157830351172.48768.9073767232890169518.reportbug@beast>
 <95a2a1cdb323633a0779acaeb0377ed60e7e3afc.camel@debian.org>
Organization: Debian
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_092545_118501_9CADC5CC 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 DKIM_INVALID           DKIM or DK signature exists, but is not valid
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
Reply-To: rrs@debian.org
Cc: linux-um@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8464190044347047576=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============8464190044347047576==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-+av4Mlpi0YF7GQ9z9YSM"


--=-+av4Mlpi0YF7GQ9z9YSM
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-01-06 at 21:51 +0530, Ritesh Raj Sarraf wrote:
> First, for context to the readers here, the port-helper binary is
> shipped with uml-utilities package. This package, depending on the
> architecture, installs the binary to a architecture specific
> location.
>=20
> https://sources.debian.org/src/uml-utilities/20070815.2-1/Makefile/#L10
>=20
> Which on an amd64 machine is: /usr/lib64/uml/port-helper

So 2 things I noticed on my machine.

1. There's nothing else under /usr/lib64/ on my Debian box. Even UML's
modules are built and installed under /usr/lib/

```
rrs@priyasi:/usr/lib$ ls uml/modules/5.4.6/
kernel/        modules.alias.bin  modules.builtin.bin      modules.dep=20
     modules.devname  modules.softdep  modules.symbols.bin
modules.alias  modules.builtin    modules.builtin.modinfo  modules.dep.
bin  modules.order    modules.symbols
22:18 =E2=99=92 =E0=A5=90  =E2=98=BA =F0=9F=98=84   =20
rrs@priyasi:/usr/lib$ ls ../lib64/
uml/
22:18 =E2=99=92 =E0=A5=90  =E2=98=BA =F0=9F=98=84   =20
rrs@priyasi:/usr/lib$ ls ../lib64/uml/
port-helper*
22:18 =E2=99=92 =E0=A5=90  =E2=98=BA =F0=9F=98=84   =20
```


2. Given that /usr/lib64/ is empty, quick immediate workaround could be to =
patch uml-utilities
and ship the binary under /usr/lib/. That would solve all these issues.


--=20
Ritesh Raj Sarraf | http://people.debian.org/~rrs
Debian - The Universal Operating System

--=-+av4Mlpi0YF7GQ9z9YSM
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl4TbYEACgkQpjpYo/Lh
dWnhOQ/+LxY/mZlXQvCfGAg7z+dzZGCzzxAAd8mbtZPtWzmW740nyPy3xh8Q3Wfb
c2OoiuU1dW5mPkR51ZLawDHSG3dxZmSBxEAPcCVGeaZ/sxI6e7cctLAHZWsBoZq+
xoezxZrkYGBvTs16ncdzE68G4yAg9UHBn5q9A+1nLwSFVy+UGbQZCM/ZhjOMEHBS
AGghnX398Rtf4kLidEVjsXOKx7NmWLiTEQpOWm00JJIeWacc48o7SYRmagHfXYlx
Zmw05ssahAEkMRmwj1/JFQe81dH2fk4pLYjkhPj4adG8ORNqOVRxSSCkxkD9zQl3
XKFM13muShVvMM3ryZOrpuJIoX/JwMvYwEQzd/l3roo3JoCbaHLWYgCJz6bRfwoX
O5kJOY/WLwrjeFjamoOykt6GN6b+qjRSZiRC2rRyAbwyAc3Pz7kncfxT766j1bNY
yMdJ8getNxn0sls+zAVU1VZugwx/qKbJEX3R/8XFnW05YCZaVofCTlmRBGwx6zpz
4LF+EAPvO987nprc47DAqLcLXNIq2GDK6/1PvHHZJQ06OeYPLJ02Lna8P1WyBDFv
BpWvbeZMiAhyhDVgr4n3pDvrz3lG3txtTT9ItWFXlDwfpj07rwDZfzCDC/59HNxa
LI9yLuSSo++cuNKzrSOGW2ZqDdcR26qulPKFf/etMCjC95s8oeg=
=mwr2
-----END PGP SIGNATURE-----

--=-+av4Mlpi0YF7GQ9z9YSM--



--===============8464190044347047576==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============8464190044347047576==--


