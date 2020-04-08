Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C7DE91A1F5F
	for <lists+linux-um@lfdr.de>; Wed,  8 Apr 2020 13:05:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Bmegb3yIHP6Kfi9jemi3iOy22lRPuuyTLqUpZoMCYr8=; b=AA0uyGCQWsrGsRwTAjlxkrMBu
	A6JH2irNAze46BfjxitURsRzlMmbIOmqaAghPO+ddntT/U4gk7CgxIh+pzu3n0/s+wrvsl+SYI18k
	Tr5pUcDgwPcWm+kcyUejsfOJFRYNKBw38gN5x0YA6bfXSnR1f6qmvIdXbb1t+cXWerzO3R75Zcng9
	hloQUdTtXRysa+rh1M46Oe9dxCNOoluuLbFHfyT6beOfP5AGbOh8zgu8m8k66mGRd4xml04FlLHLq
	rLfo4n2h+rOmce1x4tOO4MW+LMWD1mam4pB9BlqM4QQs8OqEvO6enJcQBSPRl57305zWufZSf8A2p
	OMInuyB4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM8Vz-0007sK-M7; Wed, 08 Apr 2020 11:05:03 +0000
Received: from mail-oi1-x242.google.com ([2607:f8b0:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM8Vx-0007XE-0G
 for linux-um@lists.infradead.org; Wed, 08 Apr 2020 11:05:02 +0000
Received: by mail-oi1-x242.google.com with SMTP id r21so4289725oij.11
 for <linux-um@lists.infradead.org>; Wed, 08 Apr 2020 04:04:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=message-id:subject:from:reply-to:to:date:in-reply-to:references
 :organization:user-agent:mime-version;
 bh=okor/q6dO5FOx6vWnql0Us4g8FHCVj5bq4WkFOKFEQs=;
 b=MT4Cj8mj2eTMLQyaK/oIZk74cYZmhHr0UXx/7mUsRnxaRMzDoqUDPFjIDjH3PU4Z8+
 m9W2I8AvdImNqx0/kkIHcD6uWHJO0P2xubq4fwWnnaNabts0imIREn+pCgyj8NBN1y0a
 y+QOPDPqdfS84TfA4rIKjHUBwlqrUN4sB65Tw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version;
 bh=okor/q6dO5FOx6vWnql0Us4g8FHCVj5bq4WkFOKFEQs=;
 b=liGLvpl0K+PUFdD16D7/Lonw2gMl2pwDeewRMiIsk9LxRz0so+TEaP1hAgQbi8VJnx
 EjbH8O78rC0iCgyrg+MqAWklI0MJ2Vr5pHbxyY33gYiKdYS/WNfyzsk+0d35Krn0QiTr
 dtCsXXsFL6k8pgotsuP6mvZjeImhDPEsghVR/Rvp+CiqivfHhGylEhlpRUBDOh/hOy9v
 jD13XvX/FFWaalqhXarweq16YFN2vu8/qJixT/87VTFiBQznTz0yUSwLojuu8CixoJ96
 kWY+WX02s4pr+LRDdi/flFEj4WsbNoHI54N2a6LULi2vhIXKqdxBBsKt660jtuUXFTZs
 TKTQ==
X-Gm-Message-State: AGi0PuZb205cKJwnbPGuYb8fCRJPS2cGRtK9bmkPjeaDDa2g3i1ZGbey
 GD/qzihYaBBFf7omtUTKZltwxIAgGpJkHg==
X-Google-Smtp-Source: APiQypKSDXujnWS3SBD90HcziZ6oINbFzVoRTOshOhXyvToua9/Vpm3+BnQaYDufSIcIZfBvbgsyLg==
X-Received: by 2002:a17:90a:af8c:: with SMTP id
 w12mr4597569pjq.37.1586343526413; 
 Wed, 08 Apr 2020 03:58:46 -0700 (PDT)
Received: from priyasi.researchut.com ([157.45.142.17])
 by smtp.gmail.com with ESMTPSA id d206sm16343153pfd.160.2020.04.08.03.58.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 03:58:45 -0700 (PDT)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id 263C9C8EAC1;
 Wed,  8 Apr 2020 16:28:42 +0530 (IST)
Message-ID: <ac5e36bea0200b8613849ef529d84de54b3afe70.camel@researchut.com>
Subject: Re: Documentation for UML Vector network
From: Ritesh Raj Sarraf <rrs@researchut.com>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Wed, 08 Apr 2020 16:28:41 +0530
In-Reply-To: <f64a6f99-8e20-9825-75eb-358054935807@kot-begemot.co.uk>
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
 <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
 <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
 <f64a6f99-8e20-9825-75eb-358054935807@kot-begemot.co.uk>
Organization: RESEARCHUT
User-Agent: Evolution 3.36.1-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_040501_044832_1DB7CFBD 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:242 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Reply-To: rrs@researchut.com
Content-Type: multipart/mixed; boundary="===============8449422858286707650=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============8449422858286707650==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-JL+Rn6kqvrQxq5UgDRhJ"


--=-JL+Rn6kqvrQxq5UgDRhJ
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2020-04-07 at 17:36 +0100, Anton Ivanov wrote:
>=20
> I am happy to handle proposed changes as pull requests.

Thank you for following up on this one. There's one item I felt could
be expanded. I created a PR for it on the Github repo.

I felt this was worth documenting because UML's prime selling point is
that it can run as a normal user.

https://github.com/kot-begemot-uk/uml-howto-v2/pull/1


Thanks,
Ritesh

--=20
Ritesh Raj Sarraf
RESEARCHUT - http://www.researchut.com
"Necessity is the mother of invention."

--=-JL+Rn6kqvrQxq5UgDRhJ
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl6NrmEACgkQpjpYo/Lh
dWn3vQ/+L7kRhk4JMshq8LkBv6/TnhSE56l8FqFJRNl43L4LpoL665f8x7MCysiy
UIge5n/FTbTa9D55mj9WlDpT1JEzBIgGWmt2Ly79v4HofaJggdX4gA2Tdvl2ipld
0dZ0U7GafLtcw1tfD5ReCF83TcLQu7wU+2r99NgJQbbqSLY2UJ8vVtaIzy95vCeL
H3ll7UUDq0ooHyWSNPFcxzM2li0uBNss/+yGEoGyQbAoaiStlaqN6jV50nFuYsJa
nynqy2UsYGpxH84syTV5ZZwaERUXiQHCFCvZcQLQidHOosKKUKw/43UK6OQ/FvmR
IMOBsKjro3gqK435AWX+ilbS9jOzmciX02aW809q5Mk1qL1I53o5UpDf/oUP3NxM
6EHV09dNaxcT6Kn8zfSDI8ynGnaSnsy0mv6IwiBncbuJvub+ekRP9UR+9msqPu3h
GCmqo9FXuaoFUvABVz/r27kkrWkL/4eA37XDVDO7wzq+cZgYJjcc9X5zh3k0Voyd
cTxTonavf0SMI8OYAMPFoVOaec8NgYDormsBoVkTN4E2UJ4UEKgCMqt2mDkv9eKs
3vwtApzl+GuOw/UGHYbA10E2G5+CVJbyWQ9Y4w4XC3odH7QuAmh4EEAkxDKEzKBu
dxe/hKt6fWHIqyp5byDa5H7ZuQVlTJN6EBeGG0MoEf7K8HBjSYM=
=vrlW
-----END PGP SIGNATURE-----

--=-JL+Rn6kqvrQxq5UgDRhJ--



--===============8449422858286707650==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============8449422858286707650==--


