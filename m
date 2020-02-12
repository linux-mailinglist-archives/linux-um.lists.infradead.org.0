Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE80815AC26
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 16:40:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vrUFY4On8LoDfs9Vtp6MetrvzzFZs0Uu/GlH/q67ojA=; b=cyQBvKQQe3wiM07BcaIhSaGqI
	XcHycOln32pEBI/jgMgayG1uZv25uRzrx+7z0PoKhXomZvEdsMf74817Rwzi58/jo3ANQy8A6xEbt
	fzriNh5c1Kj++oQkhBhbm8OApgkMrMtoOuDeRXhmp+m3EEqsqHWTitVTo7Phy5tongGDXJo8LbXj5
	qlBM+3wvfhEYLws2944ndkW4FL8xGXWg2dsVT55COoJvrzlVfPlvmUDjxdNezPcfaV11a4t1kntX6
	SPPvFchKppk3ck/3CMNWG3WBUCp/w0t307RYNwUuOqqlkkCcLbZ+dkgLZ+MEWVJtqF8jvPq0nOjMR
	oVg2EnC8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1u8G-0005DK-LF; Wed, 12 Feb 2020 15:40:56 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1u8D-0005D0-Hj
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 15:40:54 +0000
Received: by mail-wr1-x443.google.com with SMTP id k11so2912499wrd.9
 for <linux-um@lists.infradead.org>; Wed, 12 Feb 2020 07:40:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=message-id:subject:from:reply-to:to:date:in-reply-to:references
 :organization:user-agent:mime-version;
 bh=CBfPvV/1MXfyRFr17aDOA3a0PXwugWQX0+SQYIfCIgg=;
 b=BPNft4uOZy8AoaUG/nz4tp2EGVgUw1CloXHrB7gNd1O74RXmkOjWIQSBK1tiiPKoB2
 CobLVJOisen5DrWguTmiimRqrtU1EXE4PKuEUS8ePcYZoh9TRe4MRFIRpAOX+LqCdsvf
 3TI6GGMcQrDAJltlxLCePVLZb1P7OnoGODTu8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :in-reply-to:references:organization:user-agent:mime-version;
 bh=CBfPvV/1MXfyRFr17aDOA3a0PXwugWQX0+SQYIfCIgg=;
 b=RSvB7dO9h80Oi6OkM+o1rIjvdV8zc6k8s10h5jUIb7waV+zeadhSomxVbr8w+wN5zC
 SnsntQc1AKQvXRnCxSNWMi3vGEiEQw3NUiluFsnJ+UxCrZDfGn/UlB10ItVJwJ1if8MZ
 zQovFQ4wG9uq8Hp471rZpOAtc8fuNAElO6qXfirR9xfhlOLTh7LOysiKGOM0qvLejV6b
 JwGx4TDTa5ZS8tE8UiYRPb/AFq6VwCjfigevhG2U7G+3qWappX0jAsK3qYV8yyrEKaaI
 xVMEVrzPvH5WBrSzpp4Hu5CYd5aXueLfuJKHXuDMwWWkY4n5LD9X1+qErTYAqs77J1It
 okBA==
X-Gm-Message-State: APjAAAVHOYNezg6/ewVaQond7pKKpu4gpPjuF6tDS3E77ei5dS2Fa5/1
 QnllrVftHbuGKvw0Az4Y5F/5TzcbUks=
X-Google-Smtp-Source: APXvYqwyMNgBkUx7E/vKpMuQeAGzwpSscTJkdS3whfg0J84WvI+DX1HY09Dv+oizcy3gfbkUqP1SGA==
X-Received: by 2002:a5d:494f:: with SMTP id r15mr16432057wrs.143.1581522051567; 
 Wed, 12 Feb 2020 07:40:51 -0800 (PST)
Received: from priyasi.researchut.com ([157.45.224.103])
 by smtp.gmail.com with ESMTPSA id 16sm1220212wmi.0.2020.02.12.07.40.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 07:40:50 -0800 (PST)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id 4D7A1A055CE;
 Wed, 12 Feb 2020 21:10:44 +0530 (IST)
Message-ID: <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
Subject: Re: Documentation for UML Vector network
From: Ritesh Raj Sarraf <rrs@researchut.com>
To: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>, 
 linux-um@lists.infradead.org
Date: Wed, 12 Feb 2020 21:10:43 +0530
In-Reply-To: <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
Organization: RESEARCHUT
User-Agent: Evolution 3.34.1-3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_074053_595150_21EFCF3D 
X-CRM114-Status: UNSURE (   8.82  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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
Content-Type: multipart/mixed; boundary="===============2590776660757597519=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============2590776660757597519==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-j3HLLLnIyveW4nUVVHql"


--=-j3HLLLnIyveW4nUVVHql
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Anton,

On Wed, 2020-02-12 at 11:15 +0000, Anton Ivanov wrote:
> 1. A patch to make it transparent replacement for whatever is
> possible from the old transports is in the queue
>=20
> 2. I was going to spend most of next week to rewrite the bits and
> pieces from my website on how to use it and incorporate them into the
> official docs and submit them as a patch to Documentation.

I did skim through your website looking for pointers in that direction.

Given that UML@SourceForge is very outdated, I suggest a different
location. I also recollect Richard was considering moving to a wiki on
a much reliable and maintained location, like uml.wiki.kernel.org. But
I think that hasn't happened.

In my opinion, one good candidate where UML documentation could be
maintained is:
Documentation/virt/uml/UserModeLinux-HOWTO.txt


That document is a dump of the UML@SourceForge website content. Having
it in the kernel tree may have a better maintenance life.

--=20
Ritesh Raj Sarraf
RESEARCHUT - http://www.researchut.com
"Necessity is the mother of invention."

--=-j3HLLLnIyveW4nUVVHql
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl5EHHwACgkQpjpYo/Lh
dWkECQ//dXX1H04wx/Ofy83rpKIrM9/ZFN8C026mPmTOfv5NQaYUh1juR/uLGPnh
OOmbg0HSmU2tbBh7I/ZNTlOdU2RvnIVd0j7eF4p0cfz0vAam353rYI5AMlAY7sDU
RqwCSxAiBXIioARrNgu6Ih0++hzsN6iTHAbtHe7rVL9r9qHsnReNcPVG0HLOvkD1
YRE7jKCy8FqfxZs1AZhtYu5opq1BW9gzewHi2XaRVuuCRW5vQGgyzYUENSwRHMgW
20A5DUUkxono6NgDDLmobpKbZrv2gpT4XiElKNQJ+bKZCtgeK8I47iHStd464pZR
yxcSh/ZRRSB54WI5NhFYq3AoTFzxtGY/WAWtYnCY994jFPIJvIf1+49QMeRz6AqW
7veZAfl7jaqRQXaNTfMBYrEBhcsQ1tSVRV5C51o7lJPFZk+xfqZCekRjechRZII6
zcFFSTCRUSTD7mn7wbQWwdTjtkfM8ag3uoAXzFG4mJ5IEaGcJhglm4wCzBZf56Zy
nZHNceFt+ETHfHxlrzhGGhbwx7xD19tztPdu6mWCbeySq9wJv1c/C0Xj60j44010
V6JDkkVWjsaFRigOz1OBOaCH2eaAH8ArD65BLat+1yaUR6/e8iyDlEnM3RYlG/YM
IOSfQ/zDT6N90nDP35JuTgKVwF31D1qgbzQo7vqb/DmBEq2yJ14=
=gJ3F
-----END PGP SIGNATURE-----

--=-j3HLLLnIyveW4nUVVHql--



--===============2590776660757597519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============2590776660757597519==--


