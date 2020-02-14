Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED3E215D6A5
	for <lists+linux-um@lfdr.de>; Fri, 14 Feb 2020 12:38:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dpl+BnQjdfPfpVGSDUt5pxNBzMHqaE9QeKhSWBdSeRQ=; b=uEGJ5HV6Cnve6Zzyr55kpMptI
	ZgSp2OGiuVi4vImP1dMudJqA50nSK735mMNZq/Eo3Gt85kTX4wJKMD0j+hlpTFZpu8po8fmGKcpAl
	Vjeu+J0gPAXDDmpH3raOkXH5ZG1abGRFutyzMUccefUSkAW0p+1PN3lDsy/lG3zwhjibYQB7PnhG0
	nVyWguQS+oV0KtSKzfX3Q9s72UDwhCDy6HqcAZ88qG+kItsAh7S9w5QmmP71MzY0WD3XXd6LOhpYn
	JDaQYS8i7WdZ2mFxr2SYddPdBi6hI9v+4Sd+x/M24+hhwgWGQ45lM/tzflUoFDs/yYYU4tdtZfy9x
	5hnYueo6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ZIR-0004b6-Dq; Fri, 14 Feb 2020 11:38:11 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2ZIO-0004ap-IT
 for linux-um@lists.infradead.org; Fri, 14 Feb 2020 11:38:09 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 70so4829668pgf.8
 for <linux-um@lists.infradead.org>; Fri, 14 Feb 2020 03:38:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=message-id:subject:from:reply-to:to:date:in-reply-to:references
 :organization:user-agent:mime-version;
 bh=wRov9JlPFOxj5TwsrplZngd7kJhGrgEhkVNFYTRktKw=;
 b=xLDPJDyNWFvzf0RVM9aPFbDV5rrLZZEh/Sm35uRcs/w7c+Nna4iQqaupmlWHqqFRVN
 rWPpRjd9yRSGY7uESNKSwzVNxPbdAdNtXLI31a0VjwqkL0kevtG6dv2tiQRVax0kxwCk
 b6J2yvZMPecmzyalrKFUVyBAv74Kc9sUvNjuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version;
 bh=wRov9JlPFOxj5TwsrplZngd7kJhGrgEhkVNFYTRktKw=;
 b=o0j0mqA/weHTiKSYYxptw6JiupCrPtb1u+bf0fTxzND5Mf95B9ydppcFBMXgThyvZO
 ECuj3IhOi/uXWEulB/fy1oWcvuKU4B/Fu+1c/H1xWCzxAqgB9vG88TVwv3eRmRjsZyFa
 Z6cH8Rj/jhREGAMk/68RkcoleykFnsOGqPzmEBZpfq3i/xQ9muI3FrhJwEdKngVi2vha
 HgFew6rKM9DGzP6mWjeYP6u/4oly5Bh09KtJCbn9+tqEN6OxVv7z2nuZK1BRdqV25ID2
 xZCUppswiJTrmBeRV9tUkB57RFKvjzp0LMQ/7XKr0DSIo5W+bNSvAvLz/2drk8VTDosW
 5j1w==
X-Gm-Message-State: APjAAAX8bJjl0f688YVaSoKMWcO+e5T8vH4wkGpykn31DUhzXOcdTxGR
 TT99phry03b0SANhLHKIFCpwWYlMobY=
X-Google-Smtp-Source: APXvYqwKRfOuEJt1IB1XwuV5kZ6MoTPQESA5MXnfOmuEO4SN4ExxYd75il2xFcb3NbydFpDRg2Y4Gw==
X-Received: by 2002:a63:74b:: with SMTP id 72mr2967450pgh.162.1581680287269;
 Fri, 14 Feb 2020 03:38:07 -0800 (PST)
Received: from priyasi.researchut.com ([157.45.204.236])
 by smtp.gmail.com with ESMTPSA id d64sm6725136pga.17.2020.02.14.03.38.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 14 Feb 2020 03:38:06 -0800 (PST)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id 7FCC0A0D316;
 Fri, 14 Feb 2020 17:08:03 +0530 (IST)
Message-ID: <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
Subject: Re: Documentation for UML Vector network
From: Ritesh Raj Sarraf <rrs@researchut.com>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Fri, 14 Feb 2020 17:08:03 +0530
In-Reply-To: <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
 <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
Organization: RESEARCHUT
User-Agent: Evolution 3.34.1-3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_033808_620972_4DED3D97 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
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
Content-Type: multipart/mixed; boundary="===============4943299132634941293=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============4943299132634941293==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-gl2DumAOIbLQTxWrlCQT"


--=-gl2DumAOIbLQTxWrlCQT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anton,

On Wed, 2020-02-12 at 15:54 +0000, Anton Ivanov wrote:
> In first instance I intend to update that. There is actually a .rd
> markup version in progress for the next kernel versions.
>=20
> A wiki will be nice, because there is no way to fit all new UML
> features like direct tunnel/overlay attachment, time travel, etc in
> the documentation in the kernel tree.

A follow-up question.

The traditional UML networking modes supported slirp, which allowed for
unprivileged networking access.=20

Is that something achievable with UML Vector network ?
We have a use case where we want to be able be capable to use UML with
network features. But do not have necessary privileges to set
networking up on the host.


--=20
Ritesh Raj Sarraf
RESEARCHUT - http://www.researchut.com
"Necessity is the mother of invention."

--=-gl2DumAOIbLQTxWrlCQT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl5GhpsACgkQpjpYo/Lh
dWk+yw//dPOta4lcdvalMsyfeOb42CB58kY/jfzvPHPESCbhuwctMXQy9zuCi/Uu
p6yXFuoP+QDFf00u8LN2DROWbOBJ8+BfVUAo3SXTJGWELjeUmWYIzpKPs4AhWyFE
WhKIS0Uew+7bRZwAWwhKf1fBAAs32GkiGJpxLWFJnbUdRkyPbLc7x+NMuDIR4Nlk
2Lw7lo8eaZI3NAI/wcy/kgiheQurVp/eLvnk64q2hN9KXTZrRg6AYTHb1ONpOl2u
LWp2a3JeA7LGu59YUXvaehfck2lq8AdC56FhuNrUscPbiqZqW8Lli8YL+CGM3Xzt
cDiQtVpR9UhMQkpK+Gjwvdkih187B1i7ZSBPzOc0/qWogI/JC1/4W+ya+cL5YQhM
4cBsDkXECf8IiQ4M4PBJfNIQL5GU0c81hXlR4YCbctYp9o6pmswOdMZEXr9gvPgL
VJIW4iCprHMTyc5++3VLioWHzsKcGxrjFalr/OtBXsd9S1Vd63QWn33WvP257Vhb
L1XnLhjbWazrnffcNEus6qkkwZROOlLnkjP5dhzqFkQZU6ibDW0GalqpwT69zohx
IrbS/fSo0/1mMINE9q0yU+KF7hIsVPTm75OjN9XIPO0VO5PDnc/XzR9NLg+j5i3m
bvE7N5ft4ERFdkb6JbxVf+BZSdw76IiwNlYklaNMWNw6DslOueE=
=hVt1
-----END PGP SIGNATURE-----

--=-gl2DumAOIbLQTxWrlCQT--



--===============4943299132634941293==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============4943299132634941293==--


