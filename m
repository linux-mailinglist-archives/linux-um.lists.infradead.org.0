Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF6EB0EAB
	for <lists+linux-um@lfdr.de>; Thu, 12 Sep 2019 14:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MnRAUkFvughtu6/p69yaLiFz7H62g1k6sAxmRkvEvIg=; b=Oyul8tLID6smK1buYfYzQS5du
	UMtsYUEn28WUR2/7OwOrldZMT1b1WuTev7sy9QSonkDFk9xJL6fu+DSkTJupOmSHre0KPojhCALi0
	zLqSooCeLkQwCCWdGUKM7jMTiMuIkWY16FNpdocwQndVKzzcXwuLbuPjYaMEtxEWVUCyvjqseeNHu
	lNmWu6Ln7csjgrrcnrYwAIBU9QclP8NwwWJ8NIpZDZ5rQDW0UjZMgSVB2hhSIO0kmfOoH5jBtaoHv
	cY4lv0KVyGbkEQWm4ZIJev8kUKFxbHR01A61exvis//3lLDw3/uDQskYbwUz0EI0SHt+kFYqkwXth
	jCC+MbW9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8NzH-0002q2-FX; Thu, 12 Sep 2019 12:14:11 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8NzE-0002ph-7Z
 for linux-um@lists.infradead.org; Thu, 12 Sep 2019 12:14:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id k1so11717267pls.11
 for <linux-um@lists.infradead.org>; Thu, 12 Sep 2019 05:14:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=sender:message-id:subject:from:reply-to:to:cc:date:in-reply-to
 :references:organization:user-agent:mime-version;
 bh=3ds6QBTdp1yEdbWIRJaRAHpdwQt2SRXBtOiSrQgQ67Y=;
 b=hXHA3/tWjsXXMIk3nSXgCkvYrf9bd03QSFSX+Fl15VjnrMFY9yejQtl+SzVJcBoGn7
 ktg+7Cg+Kng6ZLnlFhTsCB3g3+aUOvqzVXNUr2nCprE25Giasu0LUgJxbkiIeGpMSu7/
 R+d5kg5Psjri0+KoKN/hxkw6ITFKNjW6Ld4Ho=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:message-id:subject:from:reply-to:to:cc
 :date:in-reply-to:references:organization:user-agent:mime-version;
 bh=3ds6QBTdp1yEdbWIRJaRAHpdwQt2SRXBtOiSrQgQ67Y=;
 b=A95ayxhYbEg4geyN756v2d/voIip+u1vGw7mDAzEK9WwgXxZhyzkRjg6yYlLZ0i/jZ
 SDexgrr3jThYnoLfMsQpeulSn72LnpKyAwE6HKUIoQXxPVwAI592ceODJIOQFZLwYnq9
 r1HfaERCPMRb02c3zuLz7qdSF9xCDN4p495DLCE/+mpLYfoZRGFa/PON60HvREX7W0zB
 UiUFtGEzYVr6dtXSUwx2uT10zTG5C6vp1swF6DBk06TOb9CAIv+S14YYrbocBvwfjryG
 6yPi5LXCvneNoHrfPfccDvciH+lfnKPaQt9uiUe7HIxM7svb4z/NUyociUUmmaAOuIXZ
 zJ1w==
X-Gm-Message-State: APjAAAVNLGTxMdvAupQ7SSs6Qrd/daT5B+EIqrPlLNremst45WCR8du7
 6mLLEi69s2+oxFe2jTjtuW912QfCtOw=
X-Google-Smtp-Source: APXvYqx/xJGiD96hewxS+w+xI9pDjTqRjdPTR9YuzY/xla9Kfi/LvOe6/swpRSKobgmes/J9jPGfGw==
X-Received: by 2002:a17:902:5ac3:: with SMTP id
 g3mr44844877plm.25.1568290446937; 
 Thu, 12 Sep 2019 05:14:06 -0700 (PDT)
Received: from priyasi ([157.49.237.80])
 by smtp.gmail.com with ESMTPSA id c1sm30440153pfd.117.2019.09.12.05.14.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Sep 2019 05:14:05 -0700 (PDT)
Received: from [127.0.0.1] (helo=localhost) by priyasi with esmtp (Exim 4.92.2)
 (envelope-from <rrs@debian.org>)
 id 1i8NzE-0004mr-4a; Thu, 12 Sep 2019 17:44:08 +0530
Message-ID: <2947157812216eae1aad2840b8981163a7af2209.camel@debian.org>
Subject: Re: Bug#938962: user-mode-linux needs update for new linux
From: Ritesh Raj Sarraf <rrs@debian.org>
To: linux-um@lists.infradead.org, Richard Weinberger <richard@nod.at>
Date: Thu, 12 Sep 2019 17:44:02 +0530
In-Reply-To: <CAHt6kzG5V3N9i68jMvxwz-5kk9h709QZsqcH9uM+cthCam87Lg@mail.gmail.com>
References: <20190830152801.GA23318@debian.org>
 <f13e90782de567a8537a15dec1834a9b8c27bd6b.camel@debian.org>
 <CAHt6kzG5V3N9i68jMvxwz-5kk9h709QZsqcH9uM+cthCam87Lg@mail.gmail.com>
Organization: Debian
User-Agent: Evolution 3.33.4-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_051408_283251_B95E1515 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
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
Cc: 938962@bugs.debian.org
Content-Type: multipart/mixed; boundary="===============0127271452299290666=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============0127271452299290666==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-+3T570S6nMOOKkAPJpQP"


--=-+3T570S6nMOOKkAPJpQP
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am not sure if this has been reported upstream but with libpcap 1.9,
user mode linux fails to build. The build failure happens with both,
5.2 and 4.19 LTS kernels.

A much detailed report is available at:
https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=3D938962

libpcap 1.9 introduces `pcap_open` which is also declared in linux
headers in arch/um/drivers/pcap_user.c


Thanks,
Ritesh

On Sat, 2019-09-07 at 17:18 +0200, Romain Francoise wrote:
> Hi,
>=20
> On Tue, Sep 3, 2019 at 3:21 PM Ritesh Raj Sarraf <rrs@debian.org>
> wrote:
> [...]
> > In file included from /usr/include/pcap.h:43,
> >                  from arch/um/drivers/pcap_user.c:7:
> > /usr/include/pcap/pcap.h:835:18: note: previous declaration of
> > =E2=80=98pcap_open=E2=80=99 was here
> >  PCAP_API pcap_t *pcap_open(const char *source, int snaplen, int
> > flags,
> >                   ^~~~~~~~~
> > make[2]: *** [scripts/Makefile.build:309:
> > arch/um/drivers/pcap_user.o] Error 1
>=20
> libpcap 1.9 includes support for remote capture, which was originally
> a part of WinPcap extensions. The `pcap_open()' symbol is part of
> that
> API and that's why it's defined in the header file even though remote
> support is not enabled in Debian. I suggest you rename the function
> defined in your program so that it doesn't conflict with libpcap.
--=20
Ritesh Raj Sarraf | http://people.debian.org/~rrs
Debian - The Universal Operating System

--=-+3T570S6nMOOKkAPJpQP
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl16NooACgkQpjpYo/Lh
dWlaXRAAld5HyPSq3EJqTWgMVT/xlFKQAos1glktwIrxfKKKqf9Su2loNHoXZgl8
c1rpg0TeZnayDM7VraDN3POrCmwLjLoTbeSE3hfGIXBQLvb9dXlLTL1Uc5r2McYz
nbuibkIXZXP5FRuqyvXlhbhm3F9CeDLMcRfa00nyVGJjgTGfhG9a6f3b3aPFCHKm
Y2YeOiuuZ2FqLzpULoMJinfmLdeyuKOxB800xKCnRglHhu6T38Mw96Mko9RouhlL
GUJ7LCTPXvnt+l0G1feRTdUHbtSAHhKDK5DDbTD7jud2hmXVIaNFso0SxHYaiDhQ
A77dfYNBxybqLBctMVVTcIrnIlFW0WUez0af7xnGFJdrrPEejvEIRUPTveBfjKgL
yrwhL5mTNFxcgDtR+VnzLPUED5p7T3R0q2F9KqA3j+zLdsSm0h1QvHZGpBf/tCiG
TZsDAUG93iqFVB6TrhO/PJEaGSQOBXWtnSGHvre4p4NECXZLb9CnUlZ5HHUdb19i
twuOXb/zgN3pKm4SpdeiNYjIBhMaQkgFW5fgVk/qPrC2V2pBUvA/2D8qnaPbLKE+
qgrIV5GV9WkFxXj/qpuXuyToHFO2UW4psJH94uTjihLp2VsaKvJ1li0UWZYcSpRu
uEOrdSFRt89A6a0rQ3bObMXnWmFAftf3tiqPUL7lCKrw+nN/+68=
=WmX9
-----END PGP SIGNATURE-----

--=-+3T570S6nMOOKkAPJpQP--



--===============0127271452299290666==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============0127271452299290666==--


