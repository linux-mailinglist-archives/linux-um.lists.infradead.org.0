Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 851C412E865
	for <lists+linux-um@lfdr.de>; Thu,  2 Jan 2020 17:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:To:From:Subject:Message-ID:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zAn5cr0HE/ioTZogc/1wRdQmPGF5DKiq/KhRYwge1sw=; b=km5VFhFmOqJbi+GGRhtc4IU0yH
	KsX6uReW4DJeH3Bx2MkFgE4Rui8U8+7xpJWsKltactkVSpZJXgzfJ1wbHG5GoFvPYzHMb5NukrR6v
	H3ge34mLHNISS93HzPD7n7P1TCKXG5oeIjOHaboMsWcFFQuy81r3QrglsgVvjkQ2qUaKLJCrPhyoc
	WjH9a4zcj46SeF8OImj/r8riPiaPK54h+Bc/m3vX/gh48dp8UQHeERs3Z7mvFH+hnmuZhAQl1/Hpt
	72K+j1ODhHaOgNq1dmrm3lNwpoS3wXVSUQp6NSayBjHRfgCgGTz1XPg5/gXDctj05t9ME4aSjniEr
	XL/CvdDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in2xS-0002Fu-S1; Thu, 02 Jan 2020 16:04:22 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in2xP-0002EO-Di
 for linux-um@lists.infradead.org; Thu, 02 Jan 2020 16:04:20 +0000
Received: by mail-wr1-x42e.google.com with SMTP id b6so39757556wrq.0
 for <linux-um@lists.infradead.org>; Thu, 02 Jan 2020 08:04:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=message-id:subject:from:reply-to:to:date:organization:user-agent
 :mime-version; bh=3u3iqceYw+whaH2ezFc9g4kj7dThK9gLoFcwPzkcc1g=;
 b=rqQTDU7oT+cbLGEdEeTsSris2pcTNRnHPo3i2+lH9j1IH5X4qoHKnfXjC8NEDxgufY
 ZvpAJadLP+As7cWZcFq7ir4LAMV6CBMVEDBzzO+PcOw6BAZG3QNPY19oitvWXoAEALvI
 SCeZ+Yj51tk8QiPmGkdHwaKlTDKDtv9UN1fW0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :organization:user-agent:mime-version;
 bh=3u3iqceYw+whaH2ezFc9g4kj7dThK9gLoFcwPzkcc1g=;
 b=BxYNuzIpn9F/pWC+1zNTG+zU7bFA0dpvUyY2Kbi9dVJO2/Ixi9lJBN2WYk9D3myp6i
 o2NCHqGsITVWyVDbHpZTkI1sdAweV66HCjJhYwJZQPidYog2IdCRLdy5QcuP8oqElD9x
 GFzB/aaaLSpCc0zWMLMMlM7BvhE3m1bQhfNXuL+ohb6fnG6Uxg7jhIzlR+N32EJlxlNe
 qLyhsYYnRdDw+I4grmuVgeHiQGC6PTYMg0Fr912Qh7krFCouePbLbeqgC2h326gp4nNj
 H4B/ErLDP+MPN++s/IdfCjbxyIAjswfvBIXUsDTWQpvExPTULONZxcC7piiLXTsUUWlp
 9/ww==
X-Gm-Message-State: APjAAAVijOfWVKSRjUt39RnFkUYigby0NlvZ+jieqLKwZC1CjQBoLzHy
 /imaVz3nB7SNoedsvnHGt02lMstw3ts=
X-Google-Smtp-Source: APXvYqy3BNOEY0pIqhJtMOmiVXDNmLrIegVcF3mhfTsw87xGE/oINenJDLQ08vnmb0C5Ug2PCfPTsw==
X-Received: by 2002:a5d:6a88:: with SMTP id s8mr80353680wru.173.1577981057164; 
 Thu, 02 Jan 2020 08:04:17 -0800 (PST)
Received: from priyasi.researchut.com ([157.45.48.78])
 by smtp.gmail.com with ESMTPSA id y6sm55465385wrl.17.2020.01.02.08.04.15
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2020 08:04:16 -0800 (PST)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id 6E18B9B4C53
 for <linux-um@lists.infradead.org>; Thu,  2 Jan 2020 21:34:10 +0530 (IST)
Message-ID: <188c72613ff8b15454670dd9de68fefcaa130c74.camel@researchut.com>
Subject: Linux UM 5.4 FTBFS: uml_reserved undefined
From: Ritesh Raj Sarraf <rrs@researchut.com>
To: linux-um@lists.infradead.org
Date: Thu, 02 Jan 2020 21:34:10 +0530
Organization: RESEARCHUT
User-Agent: Evolution 3.34.1-2+b1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_080419_467327_F69E8305 
X-CRM114-Status: UNSURE (   5.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:42e listed in]
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
Content-Type: multipart/mixed; boundary="===============2343460584781726878=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============2343460584781726878==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-bv/LG0tXkv+1ngjtPeGf"


--=-bv/LG0tXkv+1ngjtPeGf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Happy New Year 2020.

When trying to prepare the 5.4 version of User Mode Linux for Debian, I
have run into the following build failure on both the architectures.

For now, I have disabled VIRTIO_UML to get the new UML into Debian.


  KSYM    .tmp_kallsyms2.o
  LD      vmlinux
  SYSMAP  System.map
  LINK linux
  Building modules, stage 2.
  MODPOST 939 modules
ERROR: "uml_reserved" [arch/um/drivers/virtio_uml.ko] undefined!
make[2]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
make[1]: *** [Makefile:1298: modules] Error 2
make[1]: Leaving directory '/build/user-mode-linux-5.4-1um/linux-source-5.4=
'
make: *** [debian/rules:75: build-stamp] Error 2
dpkg-buildpackage: error: debian/rules binary subprocess returned exit stat=
us 2
I: copying local configuration
E: Failed autobuilding of package
I: unmounting dev/pts filesystem
I: unmounting dev/shm filesystem
I: unmounting proc filesystem
I: unmounting sys filesystem
I: cleaning the build env=20


--=20
Ritesh Raj Sarraf
RESEARCHUT - http://www.researchut.com
"Necessity is the mother of invention."

--=-bv/LG0tXkv+1ngjtPeGf
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl4OFHoACgkQpjpYo/Lh
dWk8CBAAtrvQmapKxtx9ZIoQ3kkaC8/s6LVTqHeSinDsBZDj+M9pfcocPPqCnskg
N0/SGBphIAczn+1goWR8vd8YMfS2+/+JRHzi8by0qQVwtXg7CZJsJ9i8UMlyRvdX
xuzAd87Ega5vKOFc6evygi9y4qBb+4iAUyt9mqwi2qfTw9BlD2+FcNh2DT8ePmDw
BckKpx14JL2o+s+HYc/5S4JGiDfE3HTqTvxwbtNWP6yIvVY/PPg48d/GzRlnzxXl
oFdjHkaOOlqSxlDXQGC/bPOdHX2ZalahtHLll+P8SqZPMymrYGxIxycKkqWUCf+/
ddCmYlnZfRyMD2qSZZCulK7qK6aQvCMrtjUYz6jjxswLk42W3pOaMl6UhT6dJD6X
Q2MMBBOGK/hGn+ZL7Y0EplENT6OgWr2GN1/FP/IqDJ3Wg0Wm1Nmu8TGqOsMwCbhC
8tmDQgcDxFxXPTfovI0k+yJjlT9Z/oOO7/1bAdOFR0tSN52FuhBq5PqFlw8J0H+l
Qv9aYk2M500Qw+8Vff6nV4J9s84/quxkyXhbPu5gtNf3Y94Bxhrl1PD+CXVx0bfX
5pHs/pva+W6C62Pm8csj5QB6qo2gN6aLN1CAx5f5Wb7p1ii/jHzJztLoJkp73d/I
wPsjefbHvtPN/5lEFkesmIYcYifLA1hNTsQ4nDfQtZM9w1nj2AU=
=RybU
-----END PGP SIGNATURE-----

--=-bv/LG0tXkv+1ngjtPeGf--



--===============2343460584781726878==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============2343460584781726878==--


