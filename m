Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09861316D4
	for <lists+linux-um@lfdr.de>; Mon,  6 Jan 2020 18:30:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ROBaWT4/EFUAbPAD0aWQMpqkXwGjC5QJXaE1HIQ0YgI=; b=tdp93QR4QRguV5hnIx7qh28Yu
	sgFyUUYalfN3jAQj9eZYhVK1Qiwkkty3Lg0aSJ/XhAF8zbgrLNnalhtRK94/klW+Vr1GRA086t0bk
	XtnavqU8vQO2+Cuh/mQ4eaAkxZ5GQlheP5s3wRMSb9+v8erfVBhaXOD5NGvguM6MGZGjppWCk9pqP
	EJco8xTlJcklOHXVaT4vhH6lhxq1e0mHYhXM10+yDNJWaicL3G8Tl7rqCLcdr0NrlbZezaPoMaqjJ
	i3zmV5s4KMh4gnbyTHR2Wk5gLIWHdntKZaikLm760ubIN2VhbFlJ2X5ytQaRChyCfxwKRHtJXTp06
	d2Kc1OyqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioWDK-0006RN-PD; Mon, 06 Jan 2020 17:30:50 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioWDI-0006Qm-9Z
 for linux-um@lists.infradead.org; Mon, 06 Jan 2020 17:30:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id l24so27182571pgk.2
 for <linux-um@lists.infradead.org>; Mon, 06 Jan 2020 09:30:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=sender:message-id:subject:from:reply-to:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=OHdOLmfPzwap/KY8YdQmamIIqt/ItInNnqvhBgldaWw=;
 b=VFl95MpAYl2qV+R6K5rYJdFqkycMSQLqJe1pWHaE19XtdFCvkyDYma0yE4NlPgeai0
 eYoJ7p2c/38jZAyc8xghwHAXZanwKHo+iCtztAgy61K1xcFPEDgQxYxGqSLCwBnvrc1w
 Lv0U98NQh42RBDyh/8XyrLPaxXwYSz2pAjkYI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:message-id:subject:from:reply-to:to:cc
 :date:in-reply-to:references:organization:user-agent:mime-version;
 bh=OHdOLmfPzwap/KY8YdQmamIIqt/ItInNnqvhBgldaWw=;
 b=g74amzq/vJ+ihZUG6BHRJc3heChaS8W0kA89pUDec/EC03xAo+5pcNmZLMxq8MUrmE
 maIPfUwVKMFWuc550WTGh0X/gRnM2GyBXcGsua2jRC3CAwPxcPoQqslZ74L4US3QGEvA
 xTHUsuVN5Zj9YXajTlGo1262hM8y8NyEJwqU02aNLH5BmMYz/gdfsJ9IZQY3oBv6jBpq
 gW3JqU9Dy8WRlg8iqmKcuUUAXIrJ/QOeD1yz9QTj8gAWftnDbVmkErPT2KMyNtmDA2UX
 KPhi64g3G8Fa+MEfn3oNtiljtYupZiGoi0GHtT4TXumFvizu0VCCq3cCMmNg0xr2UXbQ
 ADnA==
X-Gm-Message-State: APjAAAXM49y1RRyPTFcXqCHuLZ3TNAUBsQBCZoPytyttFuK0So+ZfAbw
 J38bM/c/7BmmygpgSftkUD5aYc52e95TOg==
X-Google-Smtp-Source: APXvYqz38lTJ4665RSjvJz5z3q9BK1P9+dX87eSyxQ3DH6N0PgEv8v+ALwynTEiRV0ayg9cem5hZcg==
X-Received: by 2002:a65:42c2:: with SMTP id l2mr108924102pgp.172.1578331847389; 
 Mon, 06 Jan 2020 09:30:47 -0800 (PST)
Received: from priyasi.researchut.com ([157.49.165.47])
 by smtp.gmail.com with ESMTPSA id n7sm25170367pjq.8.2020.01.06.09.30.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 09:30:46 -0800 (PST)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id C22539B6529;
 Mon,  6 Jan 2020 23:00:38 +0530 (IST)
Message-ID: <77154e8f71433fc0411b65b996a80641380fb717.camel@debian.org>
Subject: Re: Bug#928924: user-mode-linux: xterm functionality broken due to
 wrong path to port-helper
From: Ritesh Raj Sarraf <rrs@debian.org>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 928924@bugs.debian.org
Date: Mon, 06 Jan 2020 23:00:38 +0530
In-Reply-To: <4d26aa36-d2ab-b7f1-6cd6-abf1b158fe0a@kot-begemot.co.uk>
References: <451d491044af46fe1d87d10196e24e8e7b076f26.camel@debian.org>
 <157830351172.48768.9073767232890169518.reportbug@beast>
 <95a2a1cdb323633a0779acaeb0377ed60e7e3afc.camel@debian.org>
 <4d26aa36-d2ab-b7f1-6cd6-abf1b158fe0a@kot-begemot.co.uk>
Organization: Debian
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_093048_330891_042CD94A 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Content-Type: multipart/mixed; boundary="===============1357763793479660287=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============1357763793479660287==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-v7d0Msxfwow0H1jV38pK"


--=-v7d0Msxfwow0H1jV38pK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 2020-01-06 at 16:58 +0000, Anton Ivanov wrote:
> On 06/01/2020 16:21, Ritesh Raj Sarraf wrote:
> > Control: tag -1 +help
> >=20
> > On Mon, 2020-01-06 at 10:38 +0100, Sjoerd Simons wrote:
> > > On my sid system:
> > > ```
> > > $ strings /usr/bin/linux.uml | grep port-helper
> > > /usr/lib//uml/port-helper
> > > ```
> > >=20
> > > So the path is still incorrect even with newer upstream kernels.
> >=20
> > I spent some time today looking at the new build but I haven't been
> > able to ascertain why this isn't setting the correct path.
>=20
> It is used in a "user" side file - xterm.c
>=20
> None of these sees "CONFIG_" so it considers it undef-ed which
> defaults=20
> to 32 bit.
>=20
> You need to use some other way to figure out what is the build or to
> set=20
> OS_LIB_PATH for this case.

Thank you for the quick reply Anton.


--=20
Ritesh Raj Sarraf | http://people.debian.org/~rrs
Debian - The Universal Operating System

--=-v7d0Msxfwow0H1jV38pK
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl4Tbr4ACgkQpjpYo/Lh
dWn2eQ/+MslVAUODrH9HmbXbhg+KlmrAtTQd46H7ettMFR1JEyNeMvG6Qi/gm0yZ
vWh5o9XbDvqSr7xAvYbb4B6P4S0r64MVdTGpvGF/UngVTd/4r4nNqRZZTe9C+/jQ
R+QjHgw7RS6oLjHkW3iOcejdGD+ZJUksEtds2FDF5pnS+rXj9Ore3V8LkCwcIGCE
+hOqrzZbJw5pC101vqrIHk8FZm20vCW+dTrFn4RsV00ESSfqawd2SeOuilUPtwes
om6OiWSSwrUyPMo2Uays2HoBNbpg22L2+LJCZZidWo8n2uHrd486B2Zeo5d0j12g
VpMmB6DGZD0cB7GqqHHRy9n+SaJ2N9IC4zg0MXd+Ch+iy0TzxZpbIt362sZbnAK3
5aAZi2u/qVtSRkWyTGXwFlAHVD7OUJvaKiFx6+L9qnzWK7NfowPdrfT8Jw9Sg0u+
h/dEazCRCnJa0wllNESTc1atdzfUGmdqgD07m0nQH2UOsxn51/04HZpAI7AXofVW
q/T84GE+fAJWLC6zmoQ8fqfAlRadBNFsea6gvEior0o9bEt9SvqyJGCdr4nP2+g5
wsUDJkW6emKFYE9Fwe1wWfe2EmU9T6ImofM9xCIh640maUif+m+jrQjTYGUUgMtU
Xz8GeSq/diF4IrS9zIskN9Z99MW+f0q/4Dm8zs7HUYgHAQX+JZA=
=Soqs
-----END PGP SIGNATURE-----

--=-v7d0Msxfwow0H1jV38pK--



--===============1357763793479660287==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============1357763793479660287==--


