Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F230E10DD3A
	for <lists+linux-um@lfdr.de>; Sat, 30 Nov 2019 09:57:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oZRFI8/R4BXNAcXNY7bkpdSfGoGwYfRBiV54XsdTaGM=; b=IrpoBm0BmuWBGC
	1bogB5D2ScQPGZXTfbksI/r6iyla4e3lkcUi+Z9je6lysTWa2yGngNJsTCuehtohea1lw8w0ilbdx
	L+wwMLlGl2jAt9vm8NhQ4TFUAchmEq2dpb7gpXwzwAIhg7WT2VlzRiofvMhTi7kPR6IQWp6/YmyKI
	2p8/ww9mEhCurABr4xao7A6jsbzNCWg/F2jqw/QkhsR5LO2anrS1lK34wODjTxpEt6t7lBcSUaFYH
	1RZTqHfQOeLlDNFWFOV9G30L/yCVC1Orw2eHLPEFHJXRkY2BoH5u9gI1az/Sc1c5IYLz+e3Fixf2r
	gigXj1vogz45wM3QsKnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iayZ3-0007PM-Uv; Sat, 30 Nov 2019 08:57:17 +0000
Received: from mail-oln040092009010.outbound.protection.outlook.com
 ([40.92.9.10] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iayZ0-0007Ot-Ir
 for linux-um@lists.infradead.org; Sat, 30 Nov 2019 08:57:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MQn19qM+Nn+ipwMp9pwkjsNkKfV3en+7+XQyA9JKhXumX87aYzTdLWZ252V9J4ef6o+fJcOF/8Ew6DeUUaNrvfm0clZfuTihSNJjeVhJrPA4Kl9rRS5F6hVpL2T+FZrTqBa1GSGm3IhD3fZLhsQxhQIeLrHRqgnaPsOgVOcOl1wK5N41f8UBhkamlFG+WK8ILN37iWuSWudDqyOvh2Te29nmmeRbApLzZA+beZMUtFxpFZZA2Lbntd80fi1FL1gCxz1cJXAaBM7NKCmlmAeZs7rq3IYmIQcVTbv+Y21EN9LASdUttQQfBYN++06Vq/qKvVBjTF9FdOpviwsUFofLfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CaRdv5R3iUUPVNa0F6Y2oS1Z9Jhi2jb3i7DBpr+/wIg=;
 b=TgBPay3H58anKXIV5AdP1L4t5SUNV1+Sr2F5pfv1afdBxhgkoKS8bEgaKYhZrSpAMKbBX6vvEBr2ItKABQQDEoeLAlEZmRFEaSakLYCKjDr/K6vWYOFkXzjSXp8BXvTpuB1H8v84DG3ATWCuju2eJgIjNBTQJIlt67bkCQQ5uw7aHtv5WvJgnjXSTZ+ijp7b60+UzgC5/go4cm2s8OJQGu5QVuo00AGa2/4t/ZcaHoAFyuW02okbj1e5hiaEnF7yO4jecSYwszu7ogkkVgVak7tWbCDVKPBRH7cD3Fs9P/U5Uyi3njBkVYU3hx6Xh0jKzYblz7J7s905BfUnK920Ww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CaRdv5R3iUUPVNa0F6Y2oS1Z9Jhi2jb3i7DBpr+/wIg=;
 b=l46kk7/4qNWhc1RVF7D/uNL/tAyGW+UHeTWLX54GuLppAVNMXLl/61ButSnA8Ca7G4ThWe7retAA9or/pbgo4m8bNzp/b6SFkW1vI16PC3apBBxB6aso4KTrbawYo1YjOQC4Ut3G8akXkBr6xOqBPxCFt8gNbI5zsbTRaiks41Fj0HG6HWxDGDtp8IZm3irPXfHuVj/dDvd2df8LFiAVGRNiEcTCLUzM/UxjuWdglshVjDj8tlZXctVPZIcaklxCE5CbvmWsv0tl42laCsw+qcJvvzF5y66KVTnwQQFGIMdKHZaOEjsgeKXh5rDAcCYEaPYc3xzxZRRUSNt1hf4c9A==
Received: from BN3NAM04FT007.eop-NAM04.prod.protection.outlook.com
 (10.152.92.60) by BN3NAM04HT139.eop-NAM04.prod.protection.outlook.com
 (10.152.93.175) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18; Sat, 30 Nov
 2019 08:57:11 +0000
Received: from BYAPR10MB2791.namprd10.prod.outlook.com (10.152.92.60) by
 BN3NAM04FT007.mail.protection.outlook.com (10.152.92.91) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2495.18 via Frontend Transport; Sat, 30 Nov 2019 08:57:11 +0000
Received: from BYAPR10MB2791.namprd10.prod.outlook.com
 ([fe80::c8aa:26f7:a184:3220]) by BYAPR10MB2791.namprd10.prod.outlook.com
 ([fe80::c8aa:26f7:a184:3220%5]) with mapi id 15.20.2474.023; Sat, 30 Nov 2019
 08:57:10 +0000
From: James McMechan <james_mcmechan@hotmail.com>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-um
 <linux-um@lists.infradead.org>
Subject: Re: I get 5.4 fail to start
Thread-Topic: I get 5.4 fail to start
Thread-Index: AQHVphEhBcM2qci0K0C9gGKu21JIW6eh1zoAgAGUPxY=
Date: Sat, 30 Nov 2019 08:57:10 +0000
Message-ID: <BYAPR10MB2791D707B1CFAAE265807E8AE2410@BYAPR10MB2791.namprd10.prod.outlook.com>
References: <973c61bb-d1c4-a3ef-fec4-d492fa513d15@cambridgegreys.com>,
 <f0f44705-5c43-89b8-ecd8-1dba5e073f8d@cambridgegreys.com>
In-Reply-To: <f0f44705-5c43-89b8-ecd8-1dba5e073f8d@cambridgegreys.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:EF6ECCB5EC2C57351BE630DF8EFE80EC5E5C470D037195FD5713F019F2057070;
 UpperCasedChecksum:76A1E952C28E0AE3396F6D7AD1FABDFD6CA748D99C8F5BE6867041A6AADA46C6;
 SizeAsReceived:6975; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [nkxXbI9NttWkrKbNH8Ho9V4l72SlSjLd]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 96e02a4a-8e70-43c5-fd8f-08d7757348ee
x-ms-traffictypediagnostic: BN3NAM04HT139:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rmsSaBZMnM8We08H3oB7apfMOP54uekpGG3547skuKS3TRvHaxqjLPwDx1zdZ7LC/V0egEFADZDF6JNe8k6OIpBxutwiLfA6SZ8RxcNDRaDhXUB/92DsJSJrPB3WNzQa/5VfyEchM21KNoz61Wb2MEYmEN91Jrx71gGAz8qr5P6xEfhC0aI2YyAcypd96HEPbQ6AkHx3BEMLOjaa1lx9K5p1EAcxqGXBGjuABFKBkVU=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 96e02a4a-8e70-43c5-fd8f-08d7757348ee
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Nov 2019 08:57:10.0376 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN3NAM04HT139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_005714_629934_EB01AED6 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.9.10 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (james_mcmechan[at]hotmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

 Hello,

I believe that 1) already seems correct
Unless the C compiler has decided on another longtime usage as being undefi=
ned and optimizing the short circuit evaluation away

if "WIFEXITED(status)" is false the body of the if statement should be exec=
uted immediately without testing "WEXITSTATUS(status) !=3D exitcode" at all.

if "WIFEXITED(status)" is true only then will the "WEXITSTATUS(status) !=3D=
 exitcode" test be executed and the body of the if statement executed if tr=
ue

I am unclear what your changed version would do differently, the short circ=
uit rules prevented having to repeat the body of the if statement or use a =
goto or messy evaluation.

rewriting it using the && short circuit test should look something like this
if (WIFEXITED(status) && (WEXITSTATUS(status) !=3D exitcode)) || !WIFEXITED=
(status)) )

At least I think so,

Jim McMechan






From: linux-um <linux-um-bounces@lists.infradead.org> on behalf of Anton Iv=
anov <anton.ivanov@cambridgegreys.com>

Sent: Friday, November 29, 2019 12:47 AM

To: linux-um <linux-um@lists.infradead.org>

Subject: Re: I get 5.4 fail to start

=A0






On 28/11/2019 17:27, Anton Ivanov wrote:

> Hi all,

> =


> I get 5.4 fail to start. 5.4 gives:

> =


> Checking that ptrace can change system call numbers...check_ptrace : =


> child exited with exitcode 6, while expecting 0; status 0x67f

> Aborted

> =


> And stops right at the very start.

> =


> I do not recall anything there changing in the 5.2 - 5.4 timeframe so =


> this is weird.

> =


> Ideas?

> =




Two problems:



1. The code in stop_ptraced_child is wrong



if (!WIFEXITED(status) || (WEXITSTATUS(status) !=3D exitcode))



This is incorrect - you can use the WEXITSTATUS(status) macro only if =


WIFEXITED(status) has returned true.



2. The second problem is that for whatever reason after going to 5.4 =


that stopped returning true. No idea what's happening there.



After I fix (1), I get everything to work as intended.



I am going to play a bit with a patch which addresses (1) and submit it =


if I am happy with it. If anyone has any ideas about (2) - please shout.



-- =


Anton R. Ivanov

Cambridgegreys Limited. Registered in England. Company Number 10273661

https://www.cambridgegreys.com/



_______________________________________________

linux-um mailing list

linux-um@lists.infradead.org

http://lists.infradead.org/mailman/listinfo/linux-um


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
