Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE5D927C4E
	for <lists+linux-um@lfdr.de>; Thu, 23 May 2019 14:00:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TjWb0ISWkl4bhK619bdFY4NnLRRov5lwHKG1Z1TcA3M=; b=lHeDWBJm7af0uimuYAKT/Avmn
	feofmYCxaIFVv+JYHNUh7dq+6mQA2u4TCcCPsUEmKMBY2Dyyv6qRDewi5zeNlaIHqu650nDBH1AzC
	YR9t+ipvZ7XFDd+eFEYh5RtLeSLFtadw65TeBw5YgM9WCwJkWMlXMJ3CGQ4juMhxJjFm2tCK9/7iB
	C1kl/iMKRuad3/HgWmJkiAVTTZULwbytJCsFmMRSjvrYpl0Jb83XvUfsVU84eNJA4VYcTlJAi+cDs
	l02BAusrYUVz0dTKb12JeuYhNln2xht22KkZOLXICRZBR16IU6IMfZS3c/IRfBLKS8w8dZ+yx3FXi
	HC9bFx1Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTmO5-0007ll-Sx; Thu, 23 May 2019 11:59:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTmO2-0007lI-Pk
 for linux-um@lists.infradead.org; Thu, 23 May 2019 11:59:56 +0000
Received: by mail-wm1-x343.google.com with SMTP id y3so5549324wmm.2
 for <linux-um@lists.infradead.org>; Thu, 23 May 2019 04:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=L3mid2STVSIdD8eiNHxsdEidcq87IHDG6jiwp46vKQI=;
 b=GUlsD8QtCK4y8xNjTRgvBmAzYJeh3AvsKd2mwTDPkzNtQQjYLrMYQodh4M/Y5O6sRQ
 VJcoMQKG6pi97qUU1uC14TXPJjGVqHiMUBfq0ETaaUfBIMbD4x8nxmMKqGO/SBwCTBB3
 LoclFZcSgjS8adJYWDiMHwIEMVAfg4LjeLU27HMv2/B7CdBPz5KvB+p10QL/qWRNQmj0
 Z4W0MS4WLn8xoCvC+C+UniXGDmyhlf+hD4TPAXUDtnRVGj44b06Qofq5Q9gtbDaohJKS
 vJus6H7buR7dgwT1cXtpGNdsP7TzZpKHyJUUBQsKN0KWrYJKz74FauWho3sdBOiG41pQ
 +QzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L3mid2STVSIdD8eiNHxsdEidcq87IHDG6jiwp46vKQI=;
 b=GjqppQckBaXc0ffhit6lXhvQuEWcbW/J54pvUAKKUjaDF44G/PMBPZHhWyi8NHvRtv
 WtHR3o2YFn6XAz/h+R8J17OXkjdzQdHwjw0lL/59xMKxLFQZYldjuyRSvMURlH06pD39
 J7B4KBjoBstKIL7UGMyxhhSVQ0jIsEgmp1oGNxZlUcRyRPp1v4bd2hYhVtqUbtuOBRlX
 gopW9Si5s7c7Ei5G4Z71xNmKaSBeKDlR1P3xcKkMg/rpadzIIUoMd5N+5WQi97zuDMvj
 XpNlvw2U9ZPTN/1A32lpBn51W/vMawykROnRng3UJVrZazE8mOibrXgx+1uKm9z7rj6G
 IdQw==
X-Gm-Message-State: APjAAAWIJpqitFX/8UDSyz9fUIQ65hcksVxC7NW2hykDKpTlNXoMwMo+
 0rZQ3qGT4CEui6sgEtD0i2z8FJ9IpXa8bQ==
X-Google-Smtp-Source: APXvYqxR6Be+zenq7GFbSVZx3MBVQ+PtX/+Sdlr65Nnf4//E3fh2cAdrklzAyBYdROqEqIb3M1LGMA==
X-Received: by 2002:a1c:cf4c:: with SMTP id f73mr10886050wmg.118.1558612792215; 
 Thu, 23 May 2019 04:59:52 -0700 (PDT)
Received: from localhost ([51.15.41.238])
 by smtp.gmail.com with ESMTPSA id m10sm9530008wmf.40.2019.05.23.04.59.51
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 23 May 2019 04:59:51 -0700 (PDT)
Date: Thu, 23 May 2019 12:59:50 +0100
From: Stefan Hajnoczi <stefanha@gmail.com>
To: Johannes Berg <johannes@sipsolutions.net>
Subject: Re: [Qemu-devel] custom virt-io support (in user-mode-linux)
Message-ID: <20190523115950.GH26632@stefanha-x1.localdomain>
References: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
MIME-Version: 1.0
In-Reply-To: <0952696452f5ff4e38d2417029243fc60efa33d6.camel@sipsolutions.net>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_045954_862742_0C2FAF44 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (stefanha[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: linux-um@lists.infradead.org, qemu-devel@nongnu.org,
 virtualization@lists.linux-foundation.org
Content-Type: multipart/mixed; boundary="===============0179395269234899570=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============0179395269234899570==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="82evfD9Ogz2JrdWZ"
Content-Disposition: inline


--82evfD9Ogz2JrdWZ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, May 22, 2019 at 03:02:38PM +0200, Johannes Berg wrote:
> Hi,
>=20
> While my main interest is mostly in UML right now [1] I've CC'ed the
> qemu and virtualization lists because something similar might actually
> apply to other types of virtualization.
>=20
> I'm thinking about adding virt-io support to UML, but the tricky part is
> that while I want to use the virt-io basics (because it's a nice
> interface from the 'inside'), I don't actually want the stock drivers
> that are part of the kernel now (like virtio-net etc.) but rather
> something that integrates with wifi (probably building on hwsim).
>=20
> The 'inside' interfaces aren't really a problem - just have a specific
> device ID for this, and then write a normal virtio kernel driver for it.
>=20
> The 'outside' interfaces are where my thinking breaks down right now.
>=20
> Looking at lkl, the outside is just all implemented in lkl as code that
> gets linked to the library, so in UML terms it'd just be extra 'outside'
> code like the timer handling or other netdev stuff we have today.
> Looking at qemu, it's of course also implemented there, and then
> interfaces with the real network, console abstraction, etc.
>=20
> However, like I said above, I really need something very custom and not
> likely to make it upstream to any project (because what point is that if
> you cannot connect to the rest of the environment I'm building), so I'm
> thinking that perhaps it should be possible to write an abstract
> 'outside' that lets you interact with it really from out-of-process?
> Perhaps through some kind of shared memory segment? I think that gets
> tricky with virt-io doing DMA (I think it does?) though, so that part
> would have to be implemented directly and not out-of-process?
>=20
> But really that's why I'm asking - is there a better way than to just
> link the device-side virt-io code into the same binary (be it lkl lib,
> uml binary, qemu binary)?

Hi Johannes,
Check out vhost-user.  It's a protocol for running a subset of a VIRTIO
device's emulation in a separate process (usually just the data plane
with the PCI emulation and other configuration/setup still handled by
QEMU).

vhost-user uses a UNIX domain socket to pass file descriptors to shared
memory regions.  This way the vhost-user device backend process has
access to guest RAM.

This would be quite different for UML since my understanding is you
don't have guest RAM but actual host Linux processes, but vhost-user
might still give you ideas:
https://git.qemu.org/?p=3Dqemu.git;a=3Dblob_plain;f=3Ddocs/interop/vhost-us=
er.rst;hb=3DHEAD

Stefan

--82evfD9Ogz2JrdWZ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEEhpWov9P5fNqsNXdanKSrs4Grc8gFAlzmizYACgkQnKSrs4Gr
c8iyiQgAtcvNB/axTFWFW8B8Yja3ssAl/WQoNmZFkMVKrMmaRWNWwkZpLvFuijDm
hKISZpLqpwJLktRbr57OEBdVBGqyORDULJABoB+Tk4le6zQhgXARKoEetmjUQgEM
0CFEvYO5HrlTERLU0hFfudeH39yz8r3xMI+yZ3PWjCkqZC/KYu8Ny2s82Ltc4mnb
6OjybksHD4G5MDYC0BJO/lXeARjOO6/eLgxMGDPTWENAJTXOCeXg1ZvYtdvPsdOs
TFmzkvY63x8j8jKkgR1iJb1QjtGzpLjzhadfIPSl2MQN7hhBmOOsBzvBNJFAqOlo
ue1U9AT0+ZRt1HMcfWx59MyXofnM+Q==
=2T/5
-----END PGP SIGNATURE-----

--82evfD9Ogz2JrdWZ--


--===============0179395269234899570==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============0179395269234899570==--

