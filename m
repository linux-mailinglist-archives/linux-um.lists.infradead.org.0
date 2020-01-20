Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77DDA142115
	for <lists+linux-um@lfdr.de>; Mon, 20 Jan 2020 01:31:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ozBbIPwuZDOo7PF5GvmZti/o+gOZ1UNP3jb7QMfBq1Y=; b=D3xljv1yNt9gJt
	TtrLwOZPaZrCfVhqRC3AcXsuD/DoepsmXaXO0AWJ8uBDYUv/dER/1q/JxMZjt+TX9rq+hYzu8SyzA
	MQdsd1+fxJdse9Cv9sEcOSeEmwMrEoNK8hOEbCfk6/QnlNvfM1uBkvprLBIYb8WklXPafuVqR9NBB
	SrBlpu8guZrP/0GoLcy7fyc7Bb2zPInt3GDT24akX5fw4EtCtnEivowOjVp0vAo4F4SlvB2RutLhd
	G9rUD8i9HtPoxv/7YRMlYgSQ9k3VWoSn0koFeKHhpCGqtI0jaNZqgIphpiA9BUgeAl8Ac/Bjycphy
	MZSL0ycSBVpuDxvteRcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itKxu-0001Qv-3L; Mon, 20 Jan 2020 00:30:50 +0000
Received: from mail-co1nam11olkn2019.outbound.protection.outlook.com
 ([40.92.18.19] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itKxr-0001QQ-Dz
 for linux-um@lists.infradead.org; Mon, 20 Jan 2020 00:30:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IklExPqT9O8ojZ9BLfnOuMet6/QeXKceHrTXU+xLLdMXA843s8oOPodrfeZ1b8QKV9j4Ow6hGpCNT2T6iAOGZZvho6s8WN8We49zJrNl1BmKAm5fVJv/NZDKIZeoL6DJggSe1YCAdsN0szaObAaDfntsFhq4pD8vvUdAaaQIUb0Fp8KfMu6LY6XAxoEmzGLYMQ0iVT/MxE9B1IOI1J4/zCMGfy4NOPUwM6KzvfhZ2hiCpvFBoTnQ6yHjQKoFhRP1PaWGXA7ZA9EQO0CiPxiAGSHIRwOlOG/NYYm9IK5PWJLM3f/ROt2QY/eO9SxF8sW5tIbrl9S0XlhJFIV1LjfulA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9VzeCYlolbN5xHhaArLoxx+WIfIa7XP3m2iqnGHT/e0=;
 b=MFVKiTliJcOlPQZNRBZhfXTDg90W62KmYVw6jmC0GSqztwfqXdwSsCwei+TVx3Pu9axDSr6EF443f5c14HSno2lfDQ6dhNv/xRyxmB7No1ScWaRuXSZgXnQhi62Qbh1QmPxEay5dEenCCkMIIkgjKn5jcmY2s7WIApqZ8qj2ZfuRF3cYTnVIgFaH/kBvu3c4IbpOWNtKL0ZilbobdK7vA04mAthFIhQzLxwfKRdCMQn2V7WSo1PuVsRbNtfPGT8cEDbT3NAfx3H3YpRXoGd3o6UFk+Z4uIkTU77E/GaHpTw7a8/6NHKE5VvRHTr/J8UFveQXJcQXxhbVonNi4kDEQw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9VzeCYlolbN5xHhaArLoxx+WIfIa7XP3m2iqnGHT/e0=;
 b=r+wFuUymKMNXUmGACfz5V1Bvni4DUEJu1RTKaNlc0qeZD7HuG43lW6HGwThwjIMg+BnRlEtl8H6sP6PD2dtmNg1cKC8vA0FISTnDVgMpcofmp9fWH+9siUqhJyRt7vQXP0R5YWJOfgpeZ1w2k8vGed9hYt5mKnXHHcS3uR8ndWBsgjpX7M6BLROJn4nccSAqOqmgd0i1R9aN/7dZcUS2JtBSc2vmUpirLVmbrsRI/fnv3jIVokvNwYRQh6oTCwRS16GuINzxYUlf2ZppQWri6yobdlbKri3Bg5rGOcWat6sAcjiSphkjJYQuOiRGXg+0wpPl/3NBIbw+Xber0sEJXA==
Received: from CO1NAM11FT032.eop-nam11.prod.protection.outlook.com
 (10.13.174.60) by CO1NAM11HT039.eop-nam11.prod.protection.outlook.com
 (10.13.175.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2644.19; Mon, 20 Jan
 2020 00:30:41 +0000
Received: from SN6PR10MB3039.namprd10.prod.outlook.com (10.13.174.52) by
 CO1NAM11FT032.mail.protection.outlook.com (10.13.174.218) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19 via Frontend Transport; Mon, 20 Jan 2020 00:30:41 +0000
Received: from SN6PR10MB3039.namprd10.prod.outlook.com
 ([fe80::89f1:42ad:4887:97fe]) by SN6PR10MB3039.namprd10.prod.outlook.com
 ([fe80::89f1:42ad:4887:97fe%6]) with mapi id 15.20.2644.024; Mon, 20 Jan 2020
 00:30:41 +0000
From: James McMechan <james_mcmechan@hotmail.com>
To: Richard Weinberger <richard.weinberger@gmail.com>, Geert Uytterhoeven
 <geert@linux-m68k.org>
Subject: Re: [PATCH v1] uml: make CONFIG_STATIC_LINK actually static
Thread-Topic: [PATCH v1] uml: make CONFIG_STATIC_LINK actually static
Thread-Index: AQHVr5/Shj2lA4zUVU2juVxhWWtSaae0nc+AgD4k/oCAACtNyw==
Date: Mon, 20 Jan 2020 00:30:41 +0000
Message-ID: <c80a1c56a5a543d2a7174e598919164aSN6PR10MB3039E2FB633AC95CF4279B04E2320@SN6PR10MB3039.namprd10.prod.outlook.com>
References: <20191210212108.222514-1-brendanhiggins@google.com>
 <CAMuHMdVyjjZAoO3Q-Vr88fUGFwrn4EoiSxBmG_FV+o87BuBmwQ@mail.gmail.com>,
 <CAFLxGvzMf1Fni4va1EM1ta_o7zDjkM8iAr=j+t74+G79wq=XOA@mail.gmail.com>
In-Reply-To: <CAFLxGvzMf1Fni4va1EM1ta_o7zDjkM8iAr=j+t74+G79wq=XOA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-incomingtopheadermarker: OriginalChecksum:D32FAF7E0DE258C8906CB01120039161AA1353F123D3C13BD5F48D20569B267E;
 UpperCasedChecksum:7BDBE9549AD3A536DD2E8C38B9720AECADAA2544E2885B74D69162CD1DC12C5F;
 SizeAsReceived:7479; Count:44
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [cBhO7H5I7q7BPZaclb4Toj1wBBKbl9Bm]
x-incomingheadercount: 44
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 28207372-efbc-46ee-e74f-08d79d3ffb0a
x-ms-traffictypediagnostic: CO1NAM11HT039:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: cGxM1sj7tdQ3vP1v5z/Brs9t3lvPYpzfhCQqpp8tTLjpfZ0HBrsLi5ImmWv6amXiuDHnRAg3LSPhQAJ7sJqF2sGHFwcV9NG8+Kv82CDwufYwCfCSsUrdLlcwcMOcfQHQglB3lt14vgPI2IQYFbLeJmV+V1DYZlpLZ2ToTlX/MYusJTanaXYVur5S2t2+ZDRn
x-ms-exchange-transport-forked: True
Content-ID: <861E0265B588E5499AC32E3EDCC58493@namprd10.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 28207372-efbc-46ee-e74f-08d79d3ffb0a
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jan 2020 00:30:41.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1NAM11HT039
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_163047_474147_551A5B63 
X-CRM114-Status: UNSURE (   9.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.18.19 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [james_mcmechan[at]hotmail.com]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Johannes Berg <johannes.berg@intel.com>,
 Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "davidgow@google.com" <davidgow@google.com>,
 Brendan Higgins <brendanhiggins@google.com>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Resent for the mailing list since my webmail decided to try to send html...

I agree that at least the=A0UML_NET_VECTOR is not compatible with static li=
nking at the moment,
but I was running a statically linked UML with PCAP back in December.=A0
I was having no problems, but I don't remember if I was using PCAP itself...
I seem to remember a minor patch I did to fix a symbol conflict but nothing=
 of note.
I have not played around with=A0UML_NET_VECTOR since I run the normal netwo=
rking.
And I did not find any config info with a quick googling the vector version=
 so I just ignored it.

Enjoy.

Jim McMechan



_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
