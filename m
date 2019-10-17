Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91153DAB53
	for <lists+linux-um@lfdr.de>; Thu, 17 Oct 2019 13:37:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:Reply-To
	:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Date:To:From:Subject:Message-ID:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UHNr4QnylcMiKmLiCWfgsPmTkukhJNoisQsaeanudF0=; b=sY1XskRXlz8bq3gxqXEWMWlTer
	JjcvzrPtStXIDy+kSjhLf5o/sQh1ctC0sF8UaWPVmw73J5VB1SvEphB9jaibSeVED8yYiklexbmID
	RKItmHcwzjWnLtGRlfPDfAqCRfAqVVxH9bV/+kUpoYYdCutlsP2x+tvNw/vjp1PcRw5Sd2puK/SP9
	VwP/orYXJF70Eu3JH4nYO4qdBWP7mjqcBAIa48cb25jgq9ecascKQM+YAZ4C2fiVGTUIEwL6DjaQP
	ReuSeDd1cp5CAcTEA/mbQ4p4j+NHTFn/TWzTxn9QeiSDQfrCYvpC2K/qd9Uf+MLCWUs7BdnY/v3jY
	xBSd1RoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL45t-0006ti-UX; Thu, 17 Oct 2019 11:37:25 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL45r-0006tM-Pm
 for linux-um@lists.infradead.org; Thu, 17 Oct 2019 11:37:25 +0000
Received: by mail-pf1-x431.google.com with SMTP id q12so1474506pff.9
 for <linux-um@lists.infradead.org>; Thu, 17 Oct 2019 04:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=researchut.com; s=google;
 h=message-id:subject:from:reply-to:to:cc:date:organization:user-agent
 :mime-version; bh=WrvOjESQj4YO/KdQquQgDWvc3cBhA183vBQ8xUkMthc=;
 b=gHun299foqZiHjw9tyf5JmqKm4DpLJ1+ja6kXY1j/OOzcgw+vZFAO5p/2HLKY4lDaN
 Q4XFgNcNTQUCpigQHE9ZjgWg/GOqGgWKoOcdN2vnDT/giQo5n2Wlng6eALPjaZme4zqD
 kQvsRC95i94gxKnLHd2FeIGVGLrIg1j3kKDPA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:message-id:subject:from:reply-to:to:cc:date
 :organization:user-agent:mime-version;
 bh=WrvOjESQj4YO/KdQquQgDWvc3cBhA183vBQ8xUkMthc=;
 b=Jrqg2+56p9C2BjKJkyrp5oQWV8rmxNJUE1aXFkV1M4QLJEDiJlmxpj4iGhToOBF8PT
 H0tYq7OZxY7lGUk3yuD0CmC+/9CU0ZFXEwKDl/uPLCYoH4MvWcfzcK3SJNtHB3XHhpy2
 YaAaNF0IzJahk3f63e+nI/Knwwf6cjTM1p9NXsFaWSdH4VTzibfdIn8IN6fQftKN4Zd0
 51AYqImFp0c7GozNI2YssVI/IBhv0jvd8ttqJevSFvXfW0O1gy4NJdui6CxilrZI2kXv
 GPTjQ/S2Yr/utxOqj3mQz5V1LdArAwrgGq4h1bHI1Z5GJ2V4RNypIGJr3DaKOAHlHmXX
 kV8g==
X-Gm-Message-State: APjAAAWD/7SdpRgSdnzCcg2vZeeLqog8+flgfebZqa5+L0Ehq4cyt1+W
 iQiab8InKkKCLJfz0rqwBCuvMCBD4+Y=
X-Google-Smtp-Source: APXvYqyKZpZ5I+szUESTSf95FO5+7Rz5dZCyG9mmWwbgs22SNr6h7UPmn2Er7mFHW4AA7/gaAk2BMw==
X-Received: by 2002:a63:eb47:: with SMTP id b7mr3575988pgk.179.1571312242383; 
 Thu, 17 Oct 2019 04:37:22 -0700 (PDT)
Received: from priyasi.researchut.com ([157.45.101.159])
 by smtp.gmail.com with ESMTPSA id i74sm3490230pfe.28.2019.10.17.04.37.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 17 Oct 2019 04:37:21 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
 by priyasi.researchut.com (Postfix) with ESMTP id 9A005816C7A;
 Thu, 17 Oct 2019 17:07:35 +0530 (IST)
Message-ID: <a1307b17bd3f51d84d9195760492d1ef284b6382.camel@researchut.com>
Subject: uml segfault during I/O
From: Ritesh Raj Sarraf <rrs@researchut.com>
To: linux-um@lists.infradead.org
Date: Thu, 17 Oct 2019 17:07:35 +0530
Organization: RESEARCHUT
User-Agent: Evolution 3.34.1-2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_043723_835172_533D676B 
X-CRM114-Status: UNSURE (   4.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
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
Cc: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: multipart/mixed; boundary="===============1257918328470018330=="
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org


--===============1257918328470018330==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-ylP8deJz/E12fhKOGN+a"


--=-ylP8deJz/E12fhKOGN+a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This happens on the 5.2 Linux kernel with Debian patches on top.
The configs details are:

Linux Host: 5.2 (Debian)
Linux UML: 5.2 (Debian)

This tends to happen very easily when doing good amount of I/O, in this
case, doing an `apt upgrade`


[  OK  ] Started Update UTMP about System Runlevel Changes.
NET: Registered protocol family 10
Segment Routing with IPv6
random: crng init done

Modules linked in: ipv6 crc_ccitt
Pid: 870, comm: kworker/0:1H Not tainted 5.2.17
RIP: 0033:[<00000000607e9c03>]
RSP: 000000009d40fde0  EFLAGS: 00010297
RAX: 0000000000000000 RBX: 0000000000004801 RCX: 000000009d40fe30
RDX: 0000000000000001 RSI: 000000009dbc35c0 RDI: 0000000000000000
RBP: 000000009d40fe30 R08: 0000000c00000204 R09: 8080808080808080
R10: fefefefefefefeff R11: 0000000000000246 R12: 0000000000000000
R13: 000000009dbc35c0 R14: 000000009dbc3608 R15: 000000009dbb9800
Kernel panic - not syncing: Segfault with no mm
CPU: 0 PID: 870 Comm: kworker/0:1H Not tainted 5.2.17 #2
Workqueue: kblockd blk_mq_requeue_work
Stack:
 00000000 100000000000001 607d4425 00000001
 9dbc35c0 00000000 00000000 00000000
 9dbb9800 607d44e9 9d40fe30 9d40fe30
Call Trace:
 [<607d4425>] ? blk_mq_sched_insert_request+0x0/0xff
 [<607d44e9>] ? blk_mq_sched_insert_request+0xc4/0xff
 [<607d4425>] ? blk_mq_sched_insert_request+0x0/0xff
 [<607d07c6>] ? blk_mq_requeue_work+0xd0/0x133
 [<60434285>] ? process_one_work+0x1e4/0x34c
 [<60431fd0>] ? move_linked_works+0x0/0x4f
 [<609791f0>] ? __schedule+0x0/0x41d
 [<6043569f>] ? wq_worker_running+0xd/0x2f
 [<60431fd0>] ? move_linked_works+0x0/0x4f
 [<60435362>] ? worker_thread+0x324/0x45e
 [<6043215f>] ? set_pf_worker+0x0/0x5e
 [<604167c7>] ? get_signals+0x0/0xa
 [<60439485>] ? __kthread_parkme+0x4a/0x94
 [<60421a53>] ? do_exit+0x0/0x948
 [<6043503e>] ? worker_thread+0x0/0x45e
 [<604399aa>] ? kthread+0x198/0x1a0
 [<603fea08>] ? new_thread_handler+0x82/0xb8

/home/rrs/bin/uml-debian: line 8: 16743 Aborted                 (core dumpe=
d) linux ubd0=3D~/rrs-home/Libvirt-Images/uml.img eth0=3Ddaemon mem=3D1024M=
 rw
 16:58 =E2=99=92 =E0=A5=90   =E2=98=B9 =F0=9F=98=9F=3D> 134 =20


And the linux process remains stray on the host machine.

rrs      18159  0.0  0.0 1057692 11496 ?       Ss   16:57   0:00 linux ubd0=
=3D/home/rrs/rrs-home/Libvirt-Images/uml.img eth0=3Ddaemon mem=3D1024M rw
rrs      18187  0.0  0.0 1057704 11496 ?       Ss   16:57   0:00 linux ubd0=
=3D/home/rrs/rrs-home/Libvirt-Images/uml.img eth0=3Ddaemon mem=3D1024M rw

--=20
Ritesh Raj Sarraf
RESEARCHUT - http://www.researchut.com
"Necessity is the mother of invention."

--=-ylP8deJz/E12fhKOGN+a
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEQCVDstmIVAB/Yn02pjpYo/LhdWkFAl2oUn8ACgkQpjpYo/Lh
dWmADA/9FzkMz7T8P4ZoSnDAD+YN6Uh2mDlUEVdISMidWhneOerg3Ib612Y7kjN+
ZyFh7QxssAf2ZIkMIPgvjxK3/KhR4nwz7Z94S+2zZEOsL0eXUBD6E5Z6OSR3SrEu
cngIACdb0Q7C8TQ84XUiaxGNwhn67Unn9GLRJpi5+RK5h75J6C8T15cVeGedEM53
7c1Qt56Yytz+v5AAOzLdpJyBwKvurXuOnWoLAfFUMiXtwD0MxXkG45Rgivl0AsTk
9Om8kOq04A+D2OYXYG0QzRimWNy1HHMXzm/gcum53DpLqLrkFni6afPy+6SzZwxk
rzViZngKiobiWJpJtKS1/g+cer6v+Nuxpn8hCcM87gdGG1jQxu9Wy6BWJTsVS1O8
L50huPj0OzR+8FH7LfYQfV/a3wJc0+FGRUJ3sp1wYl+nl/FI05ryz0EGoZ1BRni1
SXhZIfH3q1GxC1/jDcnR1QT25yDCpoMg/QsYDehENVTpR6lfgjk+4bWBWM6aHupy
6aaR3HEOEK8x+RVoRTMyoLREWdUmnXeme1N7H5ZTPg3S7QRIeu9LLtD1WsKCdzNk
eMuXkhGjCpV5Rzg8PlddKFG4LC8pJQjTTtXhXbAPaYKsPVhXR/9RGAWOh9gn/VIG
Msr7ZsE+tv3IVGj8UrACF46iekWPr+akAzT9wuLFGiRS+6MKu7A=
=0DWO
-----END PGP SIGNATURE-----

--=-ylP8deJz/E12fhKOGN+a--



--===============1257918328470018330==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--===============1257918328470018330==--


