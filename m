Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFF41315F3
	for <lists+linux-um@lfdr.de>; Mon,  6 Jan 2020 17:21:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kU7s2/n8r0ZsyjhQ1qct+PDVq4EAmrwUfsVunDc33hc=; b=hvJXmJSwrtrzAN36Pk2+01EYk
	bPbA4ujfeqlaXPKEZ7zJ2fLyft0WF4CSv34jQqTHkQmJgp8Bry8STyXa0LbA4rKkuRR+YGd/z2yIk
	R2NH1ChJTY+K0iArlPtx18FKLO4pkN8lHUgu96Vc6yLWnI95Gx/5vd5lw/IjaykC80FOiEa+8U1q8
	Z72I5QzJzMyFm2UbiunI1MhOrCh8VJMywNKTwfNWhb15l0py5NA5Nup/7SMSMfPnmLuX95sWdV+CC
	Ewtn2ITubsxOKYqh5N8PpkZbnbn/hxv5H36Aa3b/g7YT3UaxuJ8S0CKDoC1tppFiNZjosKQr63Rlc
	oo/kn7HfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioV8T-0004cE-H6; Mon, 06 Jan 2020 16:21:45 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioV8Q-0004bd-G1
 for linux-um@lists.infradead.org; Mon, 06 Jan 2020 16:21:44 +0000
Received: by mail-pj1-x1043.google.com with SMTP id m13so7964850pjb.2
 for <linux-um@lists.infradead.org>; Mon, 06 Jan 2020 08:21:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=sender:message-id:subject:from:reply-to:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=V5cwx0CMYcEkl0b/7F+9BSpMm9o8V4H+hnYXEQFC9Zc=;
 b=MUCtC1/ntT96tsmgTjTnFt0I/QQRJ9kO/TRThFKTfAH3ES7RUoOH+pkPv80TYjEFdJ
 Uub0M+Iczp8l+6gaiPrX0OfuFFmozzrZBZdX4kZefGVEdB/WSwTi33nOsgjANZfPto+m
 JMfdNh4Z5F757mKFBqcF5h03v2DSVr3J2Fdbo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:message-id:subject:from:reply-to:to:cc
 :date:in-reply-to:references:organization:user-agent:mime-version;
 bh=V5cwx0CMYcEkl0b/7F+9BSpMm9o8V4H+hnYXEQFC9Zc=;
 b=R7IofYAe0grUQvrWTLXRFopEaDa6VW7RHUoxdA/+7pAteWiWNYFoFZOrJjuD+HT/8z
 MsZJt/6Ac7xMx+j2HOfEfjUwBT4lDOqm2MvzK3nR0NVF+B3QWHbkRj6O/NGSCw35usMn
 p5mWJ3wxcaoY8rZwosBBRLWIuaFGdjEQ+NdHuOrC3y2F/jg0M4dMYe/oWcfB7L7ltQg5
 CKrPxF59yPXy243Lw4O+b9YboKKygdvAlZon0ra260ShihEYiAJqGNpdqspRpgKF84jQ
 XPjnWuCsNcLcTXLlKJiJFRoOnIGx47IwBG33zNNloR6xx6+3bgBecpfNdIm4AhqWkxbO
 C+xg==
X-Gm-Message-State: APjAAAXABy7/Nz/H+IHUi13Yi0TXH+8Fa0tyWmfETDjagrYSA/bZpp9j
 LGmp1UOkZrYCd7JFeKMSlZD7rA==
X-Google-Smtp-Source: APXvYqwJBznsY5bDMChQZ2yNBDpvzEW83as/ljzlQR2TOjJBlolYLhkPASlnBGn57yYk4zQnR3Q67Q==
X-Received: by 2002:a17:90a:d789:: with SMTP id
 z9mr44621353pju.5.1578327700834; 
 Mon, 06 Jan 2020 08:21:40 -0800 (PST)
Received: from priyasi.researchut.com ([157.49.165.47])
 by smtp.gmail.com with ESMTPSA id r3sm79362139pfg.145.2020.01.06.08.21.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 08:21:39 -0800 (PST)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id 90EF99B6490;
 Mon,  6 Jan 2020 21:51:36 +0530 (IST)
Message-ID: <95a2a1cdb323633a0779acaeb0377ed60e7e3afc.camel@debian.org>
Subject: Re: Bug#928924: user-mode-linux: xterm functionality broken due to
 wrong path to port-helper
From: Ritesh Raj Sarraf <rrs@debian.org>
To: Sjoerd Simons <sjoerd@debian.org>, 928924@bugs.debian.org
Date: Mon, 06 Jan 2020 21:51:36 +0530
In-Reply-To: <157830351172.48768.9073767232890169518.reportbug@beast>
References: <451d491044af46fe1d87d10196e24e8e7b076f26.camel@debian.org>
 <157830351172.48768.9073767232890169518.reportbug@beast>
Organization: Debian
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_082142_542233_83025209 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Content-Type: multipart/mixed; boundary="===============0070498601403580167=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============0070498601403580167==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-0wIsQa6lV4juzfO00ErN"


--=-0wIsQa6lV4juzfO00ErN
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Control: tag -1 +help

On Mon, 2020-01-06 at 10:38 +0100, Sjoerd Simons wrote:
> On my sid system:
> ```
> $ strings /usr/bin/linux.uml | grep port-helper
> /usr/lib//uml/port-helper
> ```
>=20
> So the path is still incorrect even with newer upstream kernels.

I spent some time today looking at the new build but I haven't been
able to ascertain why this isn't setting the correct path.

```
$ strings `which  linux.uml` | grep port-helper
/usr/lib/uml/port-helper
```

First, for context to the readers here, the port-helper binary is
shipped with uml-utilities package. This package, depending on the
architecture, installs the binary to a architecture specific location.

https://sources.debian.org/src/uml-utilities/20070815.2-1/Makefile/#L10

Which on an amd64 machine is: /usr/lib64/uml/port-helper

```
$ dpkg  -S /usr/lib64/uml/port-helper
uml-utilities: /usr/lib64/uml/port-helper
```

The UML setup on my box always worked because long back, when I first
encountered this problem, I had created a symlink of the path to
/usr/lib/ too. And had completely forgotten about it. My apologies.


But that said, the current problem is with the UML binary built by the
kernel sources.
Problem is that, as mentioned above and other reports too on this bug
report thread, the path resolved at build time is always
"/usr/lib/uml/".

The build configuration and the code are all correct.

```
$ grep 64BIT .config
CONFIG_64BIT=3Dy
CONFIG_64BIT_TIME=3Dy
CONFIG_PHYS_ADDR_T_64BIT=3Dy
CONFIG_ARCH_DMA_ADDR_T_64BIT=3Dy
```


Snipped from: arch/um/include/shared/os.h

```
#ifdef CONFIG_64BIT
#define OS_LIB_PATH     "/usr/lib64/"
#else
#define OS_LIB_PATH     "/usr/lib/"
#endif
```

I also checked the generated include headers and they are correct for
the amd64 .config file.

```
linux-source-5.4/include/generated$ grep 64BIT autoconf.h=20
#define CONFIG_64BIT_TIME 1
#define CONFIG_PHYS_ADDR_T_64BIT 1
#define CONFIG_64BIT 1
#define CONFIG_ARCH_DMA_ADDR_T_64BIT 1
```

I'll keep looking as time permits but if anyone else has ideas on what
I may be doing wrong, please do mention.

Thanks,
Ritesh

--=20
Ritesh Raj Sarraf | http://people.debian.org/~rrs
Debian - The Universal Operating System

--=-0wIsQa6lV4juzfO00ErN
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl4TXpAACgkQpjpYo/Lh
dWmDVA//VE7XWluxHUWVk/vOrSbNlzztDwlQnBlAtiA6myb8LgioTeSn37Y/gtPj
kEAaFeHKSHK2vl6UGbruB3GSNGW3iXa0Ma2Z18rdubIDGWd22zZvGU/aBfGa1Qpl
y4vXw8eY9J6hI+m5NkeBaJWQy31NtIkEA3aRJahmHD/JvfguEmhzkkznHFCpxakC
ksJQSps2Jgehxr2z8SAnSlRnUyIVjAegbNKJNB5UOtifhHZkUAmBZsxAaw9RHn2B
Pg+CUzjQTz70rCrhpm+m0vl6a61Qdz8J7pJCJ+N59JvA4UaLzok+3UY3UywQx/hc
Yqi3m2bCowdcyb/KfCv0or2mqQAKdFFyPe75SYF/kqjYBIQH+VhuOPO3YIfGd96l
5gt8B/TuMegd4AVGcOjfX5JovzZmt4Ln9YAqhaOW0gAiPIbprnfbHItqC17IpQg+
cImD1DBwIqQRpjRVizimnOFExRBf3KOGz5rD/Z3zBuTmtwYWkr1UKNGZrrBQIFel
lV2jZOMv6EM5NSJi/PrYKFjmSGZbZA+8yYQ9SGp+sCDQO88KQPDhWCN2FliKb9MI
tgcpOfDdOdfq7dB19nZdJ86pLUSHB0nbNPZFbQbBm/q/7t4p+2fMpm7/0G5nj7G9
UccPkGQCqvPqZMBDttObUdrxiDWw5p1q6t94NJA+yRroEcQB6sI=
=UDQp
-----END PGP SIGNATURE-----

--=-0wIsQa6lV4juzfO00ErN--



--===============0070498601403580167==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============0070498601403580167==--


