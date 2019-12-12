Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5E0911C53A
	for <lists+linux-um@lfdr.de>; Thu, 12 Dec 2019 06:23:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IwK0xtJAEdv74ct+z0KDpinFdNj654h/Dsn5jKdekWE=; b=seAyNAAxybE+lY
	HGbbbjyeMT66NYfVs3OAT7/0szJAEItgv+RYyKGIMIjjzIUTa/z3kQBqE3PTNQ/k5YzNbW8HH79Mi
	wKFEoqJvtk+jkHI0pIWEiKHpnSv8qND0f6bUbgY3ZEr471o+Pq7ceMEkiBP8ml/cgZn+APy+kvRFc
	3W4EqQsNB3Z9jXMqHihr9YDzJs0H/YSpRXq+6c2HSCM9ZWHTGK+eIsx2PCiHKs/PCKBDRygdAeRep
	gziN23iADZVgL8Oc7rwUB+cDEvMTeSsdHmfMBakmlLp4kgJxiWatq6tTzA44CD7NWOPTflJK3/fhS
	tdcRfjyNxegXHZsKV1Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifGwr-0007EX-8s; Thu, 12 Dec 2019 05:23:37 +0000
Received: from mail-dm6nam10olkn2101.outbound.protection.outlook.com
 ([40.92.41.101] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifGwo-0007Dx-Sa
 for linux-um@lists.infradead.org; Thu, 12 Dec 2019 05:23:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Rzs4ov62qKZhTq9Q1EUPeviF3oOtUvaAvn/eIkVJLU1wkZSFnTPo472iuSyriSQ1jU4aNXDeIAtJwFK/NYxlfcqLJTL2cYm9s0v+rP3LT7wxE000re/bVaRznFFBvCaAigBjnRwap6B8AbHU37XEJiu2wV0cTc96z1n9n/fq9VrycvqxRTUtj49D//EQS5M0AQTy4ZTm5EFLJ+swCbMuRpsuL8yV8z+JDBqVDegQpTfZbIK9xA8T94wu1BPnh3IGEX2/9zONRnBcVxf011PTzgh3f8YqevPqwH0xIDxE7XZ1PY243CVcRSQ8xm3nG9x46aWANIi87FMd1PZ00kNPpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcR0moWa+dvUYGeS2FAbN/PyK7CqGqFgHQHCtSCkgew=;
 b=ihNjiHwt4y6DWD1YFZuV8k1fDJuu7xDaYwSrNPRfNQLCNdeCa1BU1bwsJmlCUZcpEFU2VSJcaBjIxyOIPMHkP3MPyLCTbfYQszSz1hWcfLBQLxXxxxMYIDyvAGHE0LR4u/ViQ5jTnpUpZMRpzZ04J1bno1rxiwBjPfD4aghzQmEoewaw/o+Z2u8Lz4tKzZRbwqQ4g42KbOISS2QYKgO/0Dleyfju2nS4F0zTmrNPDGc1cj2czJV11q06I4cQH1JjjYGMATeymcAWvoy250YCzfhjLlqbO04hO1Cuk/Q4eHoWEzWG2c2gZwxM9PRZJLui+Y3qgVThDdS+MqTRnpNUsg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LcR0moWa+dvUYGeS2FAbN/PyK7CqGqFgHQHCtSCkgew=;
 b=H6DPi+PpGgDp1jb+5ej4D4UUT5bjvRf/visuP8efp/Qs5PtPPFc+vlP0skhuu/eCsdVOkg6AdYJqCeFnuKeVQYlpc5UXZlWcp8jNJ4QM1NL/4cqisig0eRwsPsLy+W0ryAnF1HrqD3k3y2ldKQRcAGSdwwByrNeD/KEMZBrh7HY5+gO0G0GTpaN9e81JNS8+IaCwfASiKm1xVGF7OgfHut7v3X42EbaT6qgGxQLiB/KoMpIKnVi/n1ec2NSZu3GYqWRQ4yQE+yGTfQOIU/zUSyMkuXueHhWJ0xiEEN8i4c9Y6KFijcNgxRuAeDjpHEAQK3Nyns0gj6r2PmPo+PGj5w==
Received: from DM6NAM10FT041.eop-nam10.prod.protection.outlook.com
 (10.13.152.52) by DM6NAM10HT061.eop-nam10.prod.protection.outlook.com
 (10.13.152.131) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.14; Thu, 12 Dec
 2019 05:23:32 +0000
Received: from DM6PR10MB3225.namprd10.prod.outlook.com (10.13.152.58) by
 DM6NAM10FT041.mail.protection.outlook.com (10.13.152.202) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.14 via Frontend Transport; Thu, 12 Dec 2019 05:23:32 +0000
Received: from DM6PR10MB3225.namprd10.prod.outlook.com
 ([fe80::39de:2b0e:f029:59f6]) by DM6PR10MB3225.namprd10.prod.outlook.com
 ([fe80::39de:2b0e:f029:59f6%5]) with mapi id 15.20.2516.018; Thu, 12 Dec 2019
 05:23:32 +0000
From: James McMechan <james_mcmechan@hotmail.com>
To: Richard Weinberger <richard@nod.at>, anton ivanov
 <anton.ivanov@cambridgegreys.com>
Subject: Re: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
Thread-Topic: [PATCH v1] uml: remove support for CONFIG_STATIC_LINK
Thread-Index: AQHVruTgthVk3djZ0UGNXsy7JGY+Iqeyb2IAgACHg4CAAAPbgIAAELsAgALUgz6AABnwyQ==
Date: Thu, 12 Dec 2019 05:23:31 +0000
Message-ID: <DM6PR10MB32259A098E3BED3CF522C851E2550@DM6PR10MB3225.namprd10.prod.outlook.com>
References: <20191209230248.227508-1-brendanhiggins@google.com>
 <1406826345.111805.1575933346955.JavaMail.zimbra@nod.at>
 <2eecf4dc-eb96-859a-a015-1a4f388b57a2@cambridgegreys.com>
 <346757c8-c111-f6cf-21d2-b0bffd41b8a8@cambridgegreys.com>,
 <392256369.112046.1575966868218.JavaMail.zimbra@nod.at>,
 <DM6PR10MB3225EB0C204572F8D39C0ED5E2550@DM6PR10MB3225.namprd10.prod.outlook.com>
In-Reply-To: <DM6PR10MB3225EB0C204572F8D39C0ED5E2550@DM6PR10MB3225.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:B67D995B75CDB4F63A3DA68B48337155AD57DB7387E2013B064517AD00A5FB66;
 UpperCasedChecksum:69CC7068BBF6B35DDAD1088EA12FC66CBD50566FEB6CE62FB5BE8343AE199442;
 SizeAsReceived:7599; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [typRkk0G0LKgBSzV6w3/TMrQ4xhkPKRk]
x-ms-publictraffictype: Email
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 89c45164-1367-47b5-2bbb-08d77ec36dcf
x-ms-traffictypediagnostic: DM6NAM10HT061:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: XCJnQERTkIlNBw54JQmOg6/qTAaCYPLBgFowgNdZGDsAdvPYHiaKLX4XpjTAu2edOqEsN+e7XA////hmr/o+j2U4l2MpHzrPrRrXalkU3crNDrwpuAivvEolqinyOiDErNnIIlOTxyp+vrGEHOSlnBBfcNji9l+XM5z0z5BOpHoHxYLipKlAINPU827JKm3T
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 89c45164-1367-47b5-2bbb-08d77ec36dcf
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 05:23:31.7073 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6NAM10HT061
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_212335_099380_754088A0 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (james_mcmechan[at]hotmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.41.101 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Brendan Higgins <brendanhiggins@google.com>, Jeff Dike <jdike@addtoit.com>,
 linux-um <linux-um@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, davidgow <davidgow@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Fixed up version without html...
Um what is broken, uml seems to be working with the old stack and static linking.

I saw a comment that the vector io stuff breaks uml on static link,
but I was just running one without vector io, I had the pcap library linked in instead.
It was up for about 3 days when I rebooted from mconsole 'cad'
It would seem simplest to just mark vector io as !STATIC in the config...
I was running 5.4.2 with a pretty close to defconfig

I had to twiddle the uml pcap a little to deconflict the headers, and make sure pcap was not linking to dbus.
I have not looked into vector io too closely I seemed to remember it was using host getaddrinfo the only thing in uml doing so I think it was pulling in the glibc, so-so dynamically link networking even when told not to... and that was breaking the startup process by changing memory maps behind the programs back or some such and then segfaulting the process much like the "we will implement async io in userspace behind the processes back" did back in the day.

I would expect it to be possible to remove the getaddrinfo or use kernel functions.
It does not seem to have much in the way of comments, and I don't understand what it is trying to do.
Why would a network protocol need to lookup "protocol/ip address/port num" sets in userspace? it should just be passing everything somewhere...
Is it trying to do dynamic routing of the packets to different transports?

Slight confused but still running,

Jim McMechan
_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
