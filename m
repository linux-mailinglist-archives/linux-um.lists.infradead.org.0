Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DEF8DAB43
	for <lists+linux-um@lfdr.de>; Thu, 17 Oct 2019 13:32:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=O5g3vE0uVb9WKmSF/6GAPojzaRUQLCDVpY0iDtXVk5U=; b=gmW8Zn2FKk5CAZxtJzdAHli5g
	xV2hlU+M0g3khAEWlRCeB5x7EHsGecJYZlBdRd3Pw0+h1YXUVWIGrLpxvkIdHrM5/ethX3L1MO4i0
	TsN72VIxlE4RWIn38HHjrwMATJy1VPp7OZVrs/pd9+F2vJEq3ls/aaVvvjkq8UMFJ4E8TiquFNVml
	BqMu1O0ChPDCzkxpI+2piBl4U7WYG5L/OFbUZ3aLCxNdgEsmnrVOQULqIfn1+2qTtm8pQ3maghZ+w
	C552ur6MCWfevThg4UrY89R6jO9egPUAtp8rYULr2Z/KLFILkOVmOCnPn0tSDa7Yp6rdATZf9oZHI
	Y9//KiI3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL41S-00055N-6j; Thu, 17 Oct 2019 11:32:50 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL41O-00053o-Ip
 for linux-um@lists.infradead.org; Thu, 17 Oct 2019 11:32:48 +0000
Received: by mail-pl1-x642.google.com with SMTP id e5so987337pls.9
 for <linux-um@lists.infradead.org>; Thu, 17 Oct 2019 04:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=sender:message-id:subject:from:reply-to:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=ft0hDwG24qQ9RV4Fjwu+n7SPycfmNe+c0BSzxbVprOw=;
 b=U/qUNxi9dl0ej0kjJkfIXLFv9Gs6n+Bk5ngxB9oIifulnNldcaUDhm5Jv29vrZufiY
 +ViauFpjDkMABgl3a0rvnuEkDn5+SQJ5Kv77B0KrMmf4oevKJlYb8pYaUTGOckWKOoN+
 L48VLK/GH1Oecg8stDXj9tZ+bRUqZ2q6teVac=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:message-id:subject:from:reply-to:to:cc
 :date:in-reply-to:references:organization:user-agent:mime-version;
 bh=ft0hDwG24qQ9RV4Fjwu+n7SPycfmNe+c0BSzxbVprOw=;
 b=pNF5Nhjkllv0Y0AN2Q6VlFX7tXsbMkmJg6aEPv4nH3TVSdeIp26LlfhEw8bb4P0nql
 0Ne9nSoMjkJayeRQQJfyeajzHPizx3Fkqb+ReNqD/mMP1Q6Vc2AIPMgquXjrT3fyl/n6
 rK111f59KYGvd/sfv6I87+2sHg+UqWpndej4WhGq7YN7lsmjQiriuhPziMMYW/aZzH7X
 kKZhRl6YOTc+47ZBcBlboALawqz8L4kfyCEXj2EzhtuWHhjXcf58tZCRMT83EqqtoaU9
 5rjebKsSnhQjT/9SWez+W+Q2yMJLoycOwpalJhKKphvy+CinTo0tRyrwQYxIdS1x16lz
 naLw==
X-Gm-Message-State: APjAAAUI2pgjiR1oOA1aMCLJvPmMHIZdppZ5HxB5SSS7QtCCorlbuiOD
 89YQPpBqLclMinVfrmvtjWpRmOyfSqE=
X-Google-Smtp-Source: APXvYqwaUja9MK5PpzJBbIGhwImAfnx+EiYCkittiRjlRG3tCxYu2e6PyEUCaELs+tYFhP5uJl/Yhg==
X-Received: by 2002:a17:902:8505:: with SMTP id
 bj5mr3243395plb.31.1571311964662; 
 Thu, 17 Oct 2019 04:32:44 -0700 (PDT)
Received: from priyasi.researchut.com ([157.45.101.159])
 by smtp.gmail.com with ESMTPSA id q30sm2469539pja.18.2019.10.17.04.32.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 04:32:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by priyasi.researchut.com (Postfix) with ESMTP id 3F9C7816C77;
 Thu, 17 Oct 2019 17:02:57 +0530 (IST)
Message-ID: <202276c5253b7a510f513925c201edf180e1886b.camel@debian.org>
Subject: Re: [PATCH] um: Add back support for extra userspace libraries
From: Ritesh Raj Sarraf <rrs@debian.org>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Thu, 17 Oct 2019 17:02:56 +0530
In-Reply-To: <20191016141312.15684-1-anton.ivanov@cambridgegreys.com>
References: <20191016141312.15684-1-anton.ivanov@cambridgegreys.com>
Organization: Debian
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_043246_629062_FAFB5B36 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: richard@nod.at, 938962@bugs.debian.org
Content-Type: multipart/mixed; boundary="===============6736624134455101123=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============6736624134455101123==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-NYxJNrh4mZJlC/OxXDVQ"


--=-NYxJNrh4mZJlC/OxXDVQ
Content-Type: multipart/mixed; boundary="=-GXliNeAoZMnyi4UMh69V"


--=-GXliNeAoZMnyi4UMh69V
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Anton,

Thank you so much for working on this fix. I tested this patch and it
works. Some comments below though.

On Wed, 2019-10-16 at 15:13 +0100, Anton Ivanov wrote:
> PCAP and VDE network transports require linking with userspace
> libraries. The current build system has no means of passing these
> as arguments.
>=20
> This patch adds a script to expand the library list for linking
> for these transports as well as any future driver that needs to
> rely on additional libraries on the userspace side.
>=20
> Signed-off-by: Anton Ivanov <anton.ivanov@cambridgegreys.com>
> ---
>  arch/um/scripts/extra-libs.sh | 10 ++++++++++
>  scripts/link-vmlinux.sh       |  4 +++-
>  2 files changed, 13 insertions(+), 1 deletion(-)
>  create mode 100644 arch/um/scripts/extra-libs.sh
>=20
> diff --git a/arch/um/scripts/extra-libs.sh b/arch/um/scripts/extra-
> libs.sh
> new file mode 100644
> index 000000000000..0592485e0675
> --- /dev/null
> +++ b/arch/um/scripts/extra-libs.sh
> @@ -0,0 +1,10 @@
> +#!/bin/sh
> +
> +# This file should be included from link-vmlinux, not executed!!!
> +
> +if [ "${CONFIG_UML_NET_VDE}" =3D "y" ] ; then
> +	UML_EXTRA_LIBS=3D"$UML_EXTRA_LIBS -lvde -lvdeplug"
> +fi
> +if [ "${CONFIG_UML_NET_PCAP}" =3D "y" ] ; then
> +	UML_EXTRA_LIBS=3D"$UML_EXTRA_LIBS -lpcap"
> +fi

-lvde is not understood. I added the build dependency to libvde-dev on
Debian but that still did not help.=20

So instead I dropped it to get the build going. And my tests about
networking look fine.

The revised patch that I'm using is attached with this email.


> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 06495379fcd8..15f9e5096da0 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -90,11 +90,13 @@ vmlinux_link()
>  			-Wl,--end-group				\
>  			${@}"
> =20
> +		. arch/um/scripts/extra-libs.sh
> +
>  		${CC} ${CFLAGS_vmlinux}				\
>  			-o ${output}				\
>  			-Wl,-T,${lds}				\
>  			${objects}				\
> -			-lutil -lrt -lpthread
> +			-lutil -lrt -lpthread ${UML_EXTRA_LIBS}
>  		rm -f linux
>  	fi
>  }
--=20
Ritesh Raj Sarraf | http://people.debian.org/~rrs
Debian - The Universal Operating System

--=-GXliNeAoZMnyi4UMh69V
Content-Disposition: attachment; filename="08-fix-pcap-linkage.patch"
Content-Type: text/x-patch; name="08-fix-pcap-linkage.patch"; charset="UTF-8"
Content-Transfer-Encoding: base64

UENBUCBhbmQgVkRFIG5ldHdvcmsgdHJhbnNwb3J0cyByZXF1aXJlIGxpbmtpbmcgd2l0aCB1c2Vy
c3BhY2UKbGlicmFyaWVzLiBUaGUgY3VycmVudCBidWlsZCBzeXN0ZW0gaGFzIG5vIG1lYW5zIG9m
IHBhc3NpbmcgdGhlc2UKYXMgYXJndW1lbnRzLgoKVGhpcyBwYXRjaCBhZGRzIGEgc2NyaXB0IHRv
IGV4cGFuZCB0aGUgbGlicmFyeSBsaXN0IGZvciBsaW5raW5nCmZvciB0aGVzZSB0cmFuc3BvcnRz
IGFzIHdlbGwgYXMgYW55IGZ1dHVyZSBkcml2ZXIgdGhhdCBuZWVkcyB0bwpyZWx5IG9uIGFkZGl0
aW9uYWwgbGlicmFyaWVzIG9uIHRoZSB1c2Vyc3BhY2Ugc2lkZS4KClNpZ25lZC1vZmYtYnk6IEFu
dG9uIEl2YW5vdiA8YW50b24uaXZhbm92QGNhbWJyaWRnZWdyZXlzLmNvbT4KLS0tCiBhcmNoL3Vt
L3NjcmlwdHMvZXh0cmEtbGlicy5zaCB8IDEwICsrKysrKysrKysKIHNjcmlwdHMvbGluay12bWxp
bnV4LnNoICAgICAgIHwgIDQgKysrLQogMiBmaWxlcyBjaGFuZ2VkLCAxMyBpbnNlcnRpb25zKCsp
LCAxIGRlbGV0aW9uKC0pCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC91bS9zY3JpcHRzL2V4dHJh
LWxpYnMuc2gKCi0tLSAvZGV2L251bGwKKysrIGIvYXJjaC91bS9zY3JpcHRzL2V4dHJhLWxpYnMu
c2gKQEAgLTAsMCArMSwxMCBAQAorIyEvYmluL3NoCisKKyMgVGhpcyBmaWxlIHNob3VsZCBiZSBp
bmNsdWRlZCBmcm9tIGxpbmstdm1saW51eCwgbm90IGV4ZWN1dGVkISEhCisKK2lmIFsgIiR7Q09O
RklHX1VNTF9ORVRfVkRFfSIgPSAieSIgXSA7IHRoZW4KKyAgICAgICBVTUxfRVhUUkFfTElCUz0i
JFVNTF9FWFRSQV9MSUJTIC1sdmRlcGx1ZyIKK2ZpCitpZiBbICIke0NPTkZJR19VTUxfTkVUX1BD
QVB9IiA9ICJ5IiBdIDsgdGhlbgorICAgICAgIFVNTF9FWFRSQV9MSUJTPSIkVU1MX0VYVFJBX0xJ
QlMgLWxwY2FwIgorZmkKLS0tIGEvc2NyaXB0cy9saW5rLXZtbGludXguc2gKKysrIGIvc2NyaXB0
cy9saW5rLXZtbGludXguc2gKQEAgLTgzLDEwICs4MywxMiBAQAogCQkJLVdsLC0tZW5kLWdyb3Vw
CQkJCVwKIAkJCSR7MX0iCiAKKyAgICAgICAgICAgICAgICAuIGFyY2gvdW0vc2NyaXB0cy9leHRy
YS1saWJzLnNoCisKIAkJJHtDQ30gJHtDRkxBR1Nfdm1saW51eH0gLW8gJHsyfQkJCVwKIAkJCS1X
bCwtVCwke2xkc30JCQkJXAogCQkJJHtvYmplY3RzfQkJCQlcCi0JCQktbHV0aWwgLWxydCAtbHB0
aHJlYWQKKwkJCS1sdXRpbCAtbHJ0IC1scHRocmVhZCAke1VNTF9FWFRSQV9MSUJTfQogCQlybSAt
ZiBsaW51eAogCWZpCiB9Cg==


--=-GXliNeAoZMnyi4UMh69V--

--=-NYxJNrh4mZJlC/OxXDVQ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl2oUWkACgkQpjpYo/Lh
dWldEg/9FFsAIzEuIgOvp+LLwMHmuvr3bdS/zYoIV1KuaBPh+L3BuGc/kkVZGV2A
IqRwjBWVP/QdCbjTydwuSJbn9JYMEm0ohvwZK6jRUz5vsxHVH+b9hGeysuFuUjI2
EW2rzLMv+x+9ShvUxwY5sfG9jatxGGXci+Iw+PFn3SRl8r4ZEHz4+QHej+c3tHFu
Bx89oU/8yZYyBmPAhapDx8hd9B7x7XGo7PmV4+txw/RHMFVs9HJG6I2FC4V6Lsvr
VC3xb/nF9b37cWNP9OjcGb/uha100AUnXQ/h5MTuNLpSCwoSk0vQnrRAvFtT5BuS
gjlgmMlvPk4KjuXZtQI8OSno4Az/J2ZxRHNrkWTmpXFj2x/6UbWmXMAGneg3s8TY
9sXlmZYA1kR6ncaefDFaJEp8GKIZg6Do18arHFBS9RnJT+rAfY3fv9516gsZY19C
kZ5U74Z+F9/t96HxO+DEUnJSZKd2I8kz+uxszmtLyeXobBKYV3cscR3IxMkrzc14
joQ3nhA59A8irZALP184JZwiZbJvaaSNZUzte5n953ainOSqVSMUuVk7wiYBqCZZ
d92Gv8rOVmoLXKSUlo02x3voMFA0+sXV9vimshxkTSU+wsRq8QWIBlULepA2JQq4
r8AoMbBIh3Y6kPIpqLUTby59ZvRphx3tH/U1XsZVnWZLenOLg9M=
=TNwW
-----END PGP SIGNATURE-----

--=-NYxJNrh4mZJlC/OxXDVQ--



--===============6736624134455101123==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============6736624134455101123==--


