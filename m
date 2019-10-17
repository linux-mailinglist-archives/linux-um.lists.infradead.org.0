Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B09DAE62
	for <lists+linux-um@lfdr.de>; Thu, 17 Oct 2019 15:30:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=WU2nEQ/YKXQlbNWT7iHpdBqDQCDcD9Qk7s4clntC0Ig=; b=XXZ8ALxSdrg3gH+S9yVrtMPxW
	bsti5dmVDWlu0OZz6ts4JIKbREYfAUsEUsn8rLhBUpbPS6yff5zuUjLYZ4BjFrDT4aN9AIUzHpYtT
	gGtyh4S8SZsIbCWnC4cNCv0//xAhZ8Dvb0MZ0l5vkbMbTfkbnPGqnEeUMyQH/kAL2iNidVOh/yWfe
	ZV9s6SnrWSbnOntl80U03FOHn0xoEL3MDpNFYe4sea6NbJKQPdXnzdJ2Ty9IWkCUn2ZOA2ntuh3lx
	2XckGE12p5qz/8SC8wWz7f4wye7O1E+w10O+STtLKXzpPQ8jQx8bGFXJRWyPwum6AJefR4o32HFlg
	JK7qdzBpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5qu-0004TP-2b; Thu, 17 Oct 2019 13:30:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5qr-00049D-Hy
 for linux-um@lists.infradead.org; Thu, 17 Oct 2019 13:30:03 +0000
Received: by mail-pf1-x441.google.com with SMTP id q12so1666082pff.9
 for <linux-um@lists.infradead.org>; Thu, 17 Oct 2019 06:30:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=message-id:subject:from:reply-to:to:date:in-reply-to:references
 :organization:user-agent:mime-version;
 bh=iymLiw7OKciiJgwnX/RqZyB8tqm8K11F8cOFcoCeJL8=;
 b=Na49Qr3uq0BDuhbtl3b2cly3VFySSRYKre8W9du8NsWrZ+Z6wD2KQxSchvxYKNs8b4
 0u1fzGpT9Wzv7pm48xowI7eTYvLR67M4kQgdFGTaXeSgQ9TzZCv8gCQqkzbjcoLbLAHO
 RM+EQ+eIbnnMQ34Ll7O9LzVZ7jAXVul/LvWew=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version;
 bh=iymLiw7OKciiJgwnX/RqZyB8tqm8K11F8cOFcoCeJL8=;
 b=Ym5/mXer3b/cpM9ZOxShWQeublXzQ3v7lLrD9xcwsKRt3x/0yKM5mBLl1QzK1y5jU2
 r2zlOSTqE1RAImwXgmRPCAgHtIVKLAI7RA1NndzpGKYZQjd4JodpqlhfnJZNG7D0/KOG
 HVJh7uhvTGpbeVCEKe7d0Wu2hnheTNBP4/aFisVRMd6W4NyEOu3YGvdo24SNBO9uezTe
 dBw4J/WXgOHWMFOY6iQD52+NglBMUb2zfiUceSuq0Zxgi8mHozNGEnk822QV1BKFlCco
 R+o7Sd8CLWt+XtZNWaxSalsuLiNQj+5V9dPXR/Cwky/6N+dd6NA4EXmGBjgPJEgp5Y+c
 Fbhg==
X-Gm-Message-State: APjAAAWBMa27ASE7QJaLIQJlxi2YrO1XA88DzIy5wPJK1hfM2lmY2pjt
 L8ur+WTuCR5znt7r0Avj9D8n48eA3Ag=
X-Google-Smtp-Source: APXvYqzmA/kVKvreocIQ783VP9m4EZp2d01TkBU54C57AT/SGPtU1qYxBaXIDf+BM7AOEPjvtGyvIw==
X-Received: by 2002:a62:3602:: with SMTP id d2mr146999pfa.177.1571319000441;
 Thu, 17 Oct 2019 06:30:00 -0700 (PDT)
Received: from priyasi.researchut.com ([157.45.101.159])
 by smtp.gmail.com with ESMTPSA id v4sm2902810pff.181.2019.10.17.06.29.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 06:29:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by priyasi.researchut.com (Postfix) with ESMTP id DD53081704C;
 Thu, 17 Oct 2019 19:00:12 +0530 (IST)
Message-ID: <5dc5e0694d2fcf2f8bb083e3861fd1b39c768b8c.camel@researchut.com>
Subject: Re: uml segfault during I/O
From: Ritesh Raj Sarraf <rrs@researchut.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Thu, 17 Oct 2019 19:00:12 +0530
In-Reply-To: <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
References: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
 <1ccf27d8-6b6a-7d08-acef-93077f07511b@cambridgegreys.com>
Organization: RESEARCHUT
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_063001_649710_25A13418 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: rrs@researchut.com
Content-Type: multipart/mixed; boundary="===============5960096811992634166=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============5960096811992634166==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-z5Jv/VBlhsvXUGS4afFW"


--=-z5Jv/VBlhsvXUGS4afFW
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2019-10-17 at 14:02 +0100, Anton Ivanov wrote:
> Looking into that. I have not run into anything like that, but I have
> not used any of the legacy networking for 5 odd years now.
>=20

Do you think this is related to networking ? I ask because there was no
network activity going on.

apt is just an example. The packages were all already downloaded and
there was no network activity. Rather, there was block I/O.

One thing I noticed, which may or may not be useful to this report. I
was booting the uml guest and immediately logging into it and running
the block I/O. And the segfault would occur.

If I, instead, booted the uml vm and let it remain idle for a minute or
so and then did the I/O, it worked fine. So I am not sure if there is
any lazy initialization happening in the background which gets
corrupted during immediate hot boot I/O.

On the other hand, if you think there can be any number of commands to
run locally that could generate more information, please assist me so.

Thanks,
Ritesh

--=20
Ritesh Raj Sarraf
RESEARCHUT - http://www.researchut.com
"Necessity is the mother of invention."

--=-z5Jv/VBlhsvXUGS4afFW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl2obOQACgkQpjpYo/Lh
dWk1cRAAo8+gzLzwlQiyUnpnJbbokaY0y52QM2t2aUQZixpWwd+b+sQa/k3gskVe
Gh6RtV5h07q+soTv8R1/sgvx+thFke8Z/YVh1rLEt58OZnHqyHGnb7n5ws5xFtfy
CWh/driMnv9vSJdFuQSfCIQJ75MJGRpP7oo0znsGuXuHPOKuXWRYyk+dlse1tvxQ
JILhHXAifzbERSljjj8aWUpnnSsoknOYYTsvy5s9TsVlhElprO7esXz8oc/xE8z2
fmqmrs4A+8kheoDQeCRzIpI5UN0jwf9d5fkDnjQEg/w2ybIOmeyCKvKqxvvDW03S
rMG7i6jggcKKztAIiLzrqd/UXmg1ZqV4kToW7XnX09fehQhQ7shMYuVg5P/nxALl
20ZjANicm8oSfYuwIZORkDB9FAYmEc+zzQyyLflPRLhLuvGpzmMso85TSe0VH0Km
rThXz2HrXS8foo39UBoetKjEgpv4o9A3gRA7N2dDklF8WIdfUiy3Z1y0szD/u4g/
XvGyVMIENcyyR8lEwIC+MKDGzrC70l8+Wsdfv/7EQk798AjUA+ggZnEmii3YBDrq
isYJqkBZNtZzj7Vk5KNFODb/nupL/lntgoSlY8IA8pRjDZvSoH/1GcjlEuMmLaZx
SM5x+Ii/l/gvgFs4WAKEJMgm1yYEZs8x8HP8BaFxCCOK4JHZGs4=
=OI5y
-----END PGP SIGNATURE-----

--=-z5Jv/VBlhsvXUGS4afFW--



--===============5960096811992634166==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============5960096811992634166==--


