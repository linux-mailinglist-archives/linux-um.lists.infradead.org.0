Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8B0815A69D
	for <lists+linux-um@lfdr.de>; Wed, 12 Feb 2020 11:38:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:To:From:Subject:Message-ID:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9isBRPSpJ7AOWOExO1I4yayBmDm4nnZTLXPhQaWz6mQ=; b=aO+VosSwl6WOXlL3nbaxoLqgPt
	F2eje7GLzYnLhO8hFX77eDDx1NAwmSaOFAKBQEZBvw44JWuBTj+p93luWVmkOz0mQzce5pKEoccHu
	U4moNrlfG1epzSt7XRMkRfvSrmVMEAo8c+ixZpRq9CrglV22xhV+i2AGTMO8PamZbN+/Q4eDutF3s
	BTGlG4dxPLvS8EIJpZP0FT9M6vBD5djhFqYh8MKLDBlrEJS7pJ4F9zxQDTqQAbIP/IkeCNHCrLOyc
	3b8mYqo3EHQ1asgteWLK0+Sjonhzzhwh48xeWl2Pq6MTi7BUbePGPPvAOwTYL6NbmKIsvqvYHDBRL
	TjLwzXXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pPv-0004hm-63; Wed, 12 Feb 2020 10:38:51 +0000
Received: from mail-pf1-x42c.google.com ([2607:f8b0:4864:20::42c])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pPs-0004hE-Ka
 for linux-um@lists.infradead.org; Wed, 12 Feb 2020 10:38:49 +0000
Received: by mail-pf1-x42c.google.com with SMTP id 84so1039153pfy.6
 for <linux-um@lists.infradead.org>; Wed, 12 Feb 2020 02:38:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=message-id:subject:from:reply-to:to:date:organization:user-agent
 :mime-version; bh=tfzzaMnTqOrODPJAFIGH4SVD0YFBMObuVcYOEf3r5p4=;
 b=vq/6qWFXRDEFG0OgoozgBU6W6yDLuJ8RA6vvDdIxPbbYLOhn2mA0kxMXYCxBeHa9nI
 jyy5mY0dqv7w3CpUA8GfcwfaFn8aU8L+O+TVp8BS8FXTbX79LqlInfiQVWOWDs+fnbdN
 oR6ICnQR6PjotqGOgww5oAdQZwSnynCMk/XXk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:date
 :organization:user-agent:mime-version;
 bh=tfzzaMnTqOrODPJAFIGH4SVD0YFBMObuVcYOEf3r5p4=;
 b=ujlHAOK5evttEQERYbQI7/xmHQQN5V7VSOztSA4fdXhWVRbiiU5ukgNWEEjM1+5BfM
 X/fsLMW6JV9GgQImcE6VNHWLzuioep4Wf/c4leekNNMohiRSZgWqOt1Gv7Yuuz+bDiNd
 cixoWB0dAD75Mr1e+NbkTcU7GFpLFJUb1SmQXkBYfU0MFAdy02Po6QRa+UNGYWbxhHz5
 wuUyjiwsqpzM3vqEY35hB0wcxLL+ofq5MLJYUZW+oyAFRgBTB8AvhYgwire864t+REJL
 oQjj8K07ixM1drWJ56/fKbAVOTS/VaKcFbCrN1cfQskslmiwTjmQV/aV+Y8xfSiGzZ7S
 yyWA==
X-Gm-Message-State: APjAAAXKL+dYq6FoZuaVq5H1qV/IeepNN9hSCPzjLhLnWB44cQytg2u8
 SH3TW5Hg6c8tWt8zmj/o80xvw9GatUg=
X-Google-Smtp-Source: APXvYqwYEBrNkZP1USflLbq7fpGTsyxDYqXO7oKLEYyigQEkJDbyTfcZDVZ+0EI6OFmfKcDmF3B40g==
X-Received: by 2002:a63:b143:: with SMTP id g3mr11304541pgp.205.1581503926914; 
 Wed, 12 Feb 2020 02:38:46 -0800 (PST)
Received: from priyasi.researchut.com ([157.45.224.103])
 by smtp.gmail.com with ESMTPSA id l15sm7326760pgi.31.2020.02.12.02.38.45
 for <linux-um@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 12 Feb 2020 02:38:46 -0800 (PST)
Received: from localhost (localhost [IPv6:::1])
 by priyasi.researchut.com (Postfix) with ESMTP id 841D4A0554D
 for <linux-um@lists.infradead.org>; Wed, 12 Feb 2020 16:08:42 +0530 (IST)
Message-ID: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
Subject: Documentation for UML Vector network
From: Ritesh Raj Sarraf <rrs@researchut.com>
To: linux-um@lists.infradead.org
Date: Wed, 12 Feb 2020 16:08:42 +0530
Organization: RESEARCHUT
User-Agent: Evolution 3.34.1-3 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023848_684543_441F0344 
X-CRM114-Status: UNSURE (   6.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42c listed in]
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
Content-Type: multipart/mixed; boundary="===============7183049837127697469=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============7183049837127697469==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-fH2OZQarYC5vHktudbJT"


--=-fH2OZQarYC5vHktudbJT
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I see in the latest changes for Linux in Linus's tree, that the
previous networking modes have been marked obsolete.

Is there any official documentation on how to use the new Vector
network in UML ? Or does it stand transparent to the users ?

--=20
Ritesh Raj Sarraf
RESEARCHUT - http://www.researchut.com
"Necessity is the mother of invention."

--=-fH2OZQarYC5vHktudbJT
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl5D1bIACgkQpjpYo/Lh
dWm0XxAAtsjJgkgoX3V2pZy71QrMEO3yptcI7HHnMzYmR3BNLcBR8RSlinWgXzkN
8saAz7eKSFxALaVKKLI9xZbIFqchNKMV1lUhMBqmWWrL7eMy/DWxtX7+xXruYIrs
sb+PtPWECWoBCszQtjpB4lvGRXi2odqWYkPecRPB0qsbV6+V6cLiVhm3SxigT8Kx
cJ8yi3stnho7oI3BH+qC4+x6/FAvBXlxkCUBC2V9IZdpE4VwZF/BGmTOpB5tJ9Rv
NmetOBNpAXL34KkCr3tnEo3XExoOqdegzfJZY9z8DJEaggtci8beUW6iTPC/I0SY
L2GfXJ8LfxSe05D1UDHhWQs6mtRayhKi+xscZuymrWKCRfSL5rz0L9t3P2Q59/cO
NQZP575XDa57EtSyyRpZh3pwagZkkshkfzzsKf4tvf8OeIlQLv6biNToD/sLXhwh
FFBRoZ7zNGeXHh93VfsEDfhSu15PVgwnAwV3Qr9Xtoi3nk2MauPPWVOuQUUmb/KG
GzySMFl0RVyCWSClVxaak+QnyQdU+Gnl1v9RetCS4AQxIMd2rWFxM0qxG3lUrkiz
pBlUweUVLUn9v02TOhbHUnwN5LGSqkWVPE7n2fh6xh5BiGp1HPMo/f2PMfZvnGOZ
poP/lmikdt97CXe8vMQNWb1CgMOU/yCmvtxxayK1A/sLMyyzGqA=
=8/Od
-----END PGP SIGNATURE-----

--=-fH2OZQarYC5vHktudbJT--



--===============7183049837127697469==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============7183049837127697469==--


