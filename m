Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7156419A634
	for <lists+linux-um@lfdr.de>; Wed,  1 Apr 2020 09:27:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZtZOjXdxRC1+MnSuF57QLsSscLFzZAkn5YWwOB69joY=; b=cclTNKRCiLmA/xmhum/bHxYCy5
	tvUB4DXxXRRPodcwfmF362K7/IDOVup4IOKw1HsLnXJRq78rFBMWASfdsWAJ3szl+GLwVgGDqfBFV
	bUOt8e/xqHQe8jqgLEY26Gm513LFQ1WyjFf6tSTUHg0sk0J7PC6dUlTLakvsjwu9za3EJUkoA0sLn
	DXw8TS4yGrk0Vczahnc9zCpc+jfn/plBid0SjPReRUo8gxeK+4lOwNXjLqf4mkjbK3ClohEdxJgCF
	hTpBr7FtO5iA2bTaHcuAzRcN7QQtq3DxhvQDGZaYLhw+GpOsExfMIU8WjLgrwfeKDsGEWkuAcuiVU
	GHgyHwWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXml-000090-Qp; Wed, 01 Apr 2020 07:27:39 +0000
Received: from mail-oln040092003021.outbound.protection.outlook.com
 ([40.92.3.21] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXmi-000085-LK
 for linux-um@lists.infradead.org; Wed, 01 Apr 2020 07:27:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E8+IBoaX5B8azlsGMbyzzTZdIaJ1vO7NBpU5ndqaz8cm/VoXtmBQ0K2wWlL7eHCLWFc9zUlr7/ODHZn85P3v6SgKuChkw2gBy+C25fJdNT0ZbEcAdSCEw+JI7hTc+swYbVdPNNqMF/Bt4JyRrC27K8g3veCKWmANB4TJrkq+mCWucRf9lG8BmtS+0PYJ7v4GVGmGOkq2h1CY+nJ87mXqCpxgC70VkoCjZLpmUR94RZg3lj9Bk8Rfj2VW3Fx9RPEvJmxrdnL5iegAHD2AXz7MKtOLbsB8KgJTnapKc2vHOl6lUeFN4YERQjffoJ6aoFU3/bZx5DYkAweHhlHHNuubyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7x0X4NKlmDM2SoPTDYvuXPDPqrfiX5XyDFWxY1gC/EE=;
 b=meqg31vEvCXpiNekBH/te/7+SW4q6MEYI0IIXAGi8CK7Vl7L0QNuO4LPM1DinfWylQ1T5zw0kwLJuNZXTsCplpSnjrbxtRjGolzcLEO6LxotfrfoUCsBmexTZVa5P0tvvodRQf2ANHLoYJlyV37kyoQhZqygRnrrtO6ypSFlA+EyWgHw63ieJe/SwE1+5YOS9yJEwdLdZY4y4+iUPnxe76piw2K7Pij7/DCjsi7VxO2rCjmXM+GxLZFCQD0AosEH/Z6XZzfwK2fSBo7T4aS70VppsYej6opST0kuDXf5lDGRif9eVX30QZCD7s5k4leUAiaBmgMy5Ye/XqaEVzSYvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=7x0X4NKlmDM2SoPTDYvuXPDPqrfiX5XyDFWxY1gC/EE=;
 b=fmgFlH8+JhhvwPxQRdLZm07xbo0xudrOdP4oArsWz2A79nxkJTAhOJToS3QzGRgkT80Q1siv+uqrFgPLiudLsZ0dgrLPKCDUWV2WZu4c8ixZvuojt4mTKubrtdvdLqIvn4hACx7Xf3BFQrvNQDdLUTHRJ47GpjTgeWxwciAqufFx290GkIg0q5831+cucmPgrTXZx8ik8fm+7UwJwCKEhEwlQAwhLw0l/E4ORH+wqpWbc1gLebhu6+uGWCZL9zM39lOraCPYSKNwJeFx5EDxdq9//BwDK+cjCAfwWpJeQlhZFVYjLsHmgj94JBro/Z2CvnZIPC7QbvzhU3bcVPQvrA==
Received: from CY1NAM02FT053.eop-nam02.prod.protection.outlook.com
 (10.152.74.58) by CY1NAM02HT137.eop-nam02.prod.protection.outlook.com
 (10.152.75.232) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2856.17; Wed, 1 Apr
 2020 07:27:33 +0000
Received: from SN6PR10MB3039.namprd10.prod.outlook.com
 (2a01:111:e400:7e45::4b) by CY1NAM02FT053.mail.protection.outlook.com
 (2a01:111:e400:7e45::165) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2878.15 via Frontend
 Transport; Wed, 1 Apr 2020 07:27:33 +0000
Received: from SN6PR10MB3039.namprd10.prod.outlook.com
 ([fe80::618d:fdeb:fb9f:e8f0]) by SN6PR10MB3039.namprd10.prod.outlook.com
 ([fe80::618d:fdeb:fb9f:e8f0%6]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 07:27:33 +0000
From: James McMechan <james_mcmechan@hotmail.com>
To: "linux-um@lists.infradead.org" <linux-um@lists.infradead.org>
Subject: Patch to remove symbol conflicts in pcap transport
Thread-Topic: Patch to remove symbol conflicts in pcap transport
Thread-Index: AQHWB/QXbdfL8lqkP02PE9Td95rGpg==
Date: Wed, 1 Apr 2020 07:27:32 +0000
Message-ID: <SN6PR10MB30394F0158533B8AE1151F81E2C90@SN6PR10MB3039.namprd10.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2A9EC5904196A2DFAEC9BD641938D1CF27C8135278820D693230BFA3150C12ED;
 UpperCasedChecksum:A75E26C602966A2FB967C54672D4F2A3C1BD250F0B3B1D604CA243F16997AE35;
 SizeAsReceived:6795; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [AQwVGoAqkeYsEokJ+lK6NZJpsjQkUGLF]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: ff0546bc-81e4-4884-018c-08d7d60e24b7
x-ms-traffictypediagnostic: CY1NAM02HT137:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: SCBqmhA1sdBp5Q6JzkLFKcIejY4F3YFQBnCFPUBGPjH51MIgnmSPkk11h01Zga1fQ1XkD8CqzGKX0Yb38PMjpTOZUFjAhAM8dHz8HwTN8f0LvhCcZTclHivhm1JDQrq6rLs10N3htYWn9iMG3fjC+3PjBkCYrOIxe/XFriDgBeaWbgwENqWXHWVl5vVt3KQe
x-ms-exchange-antispam-messagedata: BFviKJ63ZobHOx4lpFENKjHvBJX7PN1uJPbr1ujPkLGtkVGm0KsbOgp5P/KujCAimQwUbDSJSQJRU91TcrCK9V6MeJRMol7vQXUCARDWPgqwSL2TG23eoiOcw8fFLjNeDEvNV2audaScGgTYEnMp+Q==
x-ms-exchange-transport-forked: True
Content-Type: multipart/mixed;
 boundary="_002_SN6PR10MB30394F0158533B8AE1151F81E2C90SN6PR10MB3039namp_"
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: ff0546bc-81e4-4884-018c-08d7d60e24b7
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 07:27:32.9114 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT137
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_002736_751217_0FB64319 
X-CRM114-Status: GOOD (  13.44  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.92.3.21 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [james_mcmechan[at]hotmail.com]
 1.2 FORGED_HOTMAIL_RCVD2   hotmail.com 'From' address, but no
 'Received:'
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

--_002_SN6PR10MB30394F0158533B8AE1151F81E2C90SN6PR10MB3039namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi,=0A=
=0A=
I had fixed up the pcap transport back in December,=0A=
Attached is the patch I was using (with a couple clean ups) I just prefixed=
 likely collisions with /um_/=0A=
It has been working since 5.4.2 up thru 5.6.0 so far=0A=
I noticed that the standard transports are now marked (obsolete) in 5.6.0=
=0A=
Does this version of the new transport work correctly when statically linke=
d? It nolonger errors out at startup.=0A=
I have not found any documentation on how to configure the new experimental=
 vector transport.=0A=
Since the classic transports are between 10-100 times faster than my networ=
k anyway I have not felt a need to upgrade.=0A=
More I was using UML to deal with some very old systems that were not easil=
y upgraded. e.g. 2.6 kernels and I think even a 2.0.32?=0A=
The vector Kconfig help says it wants a >=3D3.0 kernel for example.=0A=
=0A=
Enjoy,=0A=
=0A=
Jim McMechan=

--_002_SN6PR10MB30394F0158533B8AE1151F81E2C90SN6PR10MB3039namp_
Content-Type: text/plain; name="pcap-patch.txt"
Content-Description: pcap-patch.txt
Content-Disposition: attachment; filename="pcap-patch.txt"; size=5181;
	creation-date="Wed, 01 Apr 2020 06:29:56 GMT";
	modification-date="Wed, 01 Apr 2020 06:30:39 GMT"
Content-Transfer-Encoding: base64

ZGlmZiAtTnVyIGxpbnV4LTUuNC4yL2FyY2gvdW0vZHJpdmVycy9wY2FwX2tlcm4uYyB1bWwtNS40
LjIvYXJjaC91bS9kcml2ZXJzL3BjYXBfa2Vybi5jCi0tLSBsaW51eC01LjQuMi9hcmNoL3VtL2Ry
aXZlcnMvcGNhcF9rZXJuLmMJMjAxOS0xMS0yNCAxNjozMjowMS4wMDAwMDAwMDAgLTA4MDAKKysr
IHVtbC01LjQuMi9hcmNoL3VtL2RyaXZlcnMvcGNhcF9rZXJuLmMJMjAxOS0xMi0wNiAyMjowNDo1
OS43ODMyNTU2NTMgLTA4MDAKQEAgLTgsMTggKzgsMTggQEAKICNpbmNsdWRlIDxuZXRfa2Vybi5o
PgogI2luY2x1ZGUgInBjYXBfdXNlci5oIgogCi1zdHJ1Y3QgcGNhcF9pbml0IHsKK3N0cnVjdCB1
bV9wY2FwX2luaXQgewogCWNoYXIgKmhvc3RfaWY7CiAJaW50IHByb21pc2M7CiAJaW50IG9wdGlt
aXplOwogCWNoYXIgKmZpbHRlcjsKIH07CiAKLXZvaWQgcGNhcF9pbml0KHN0cnVjdCBuZXRfZGV2
aWNlICpkZXYsIHZvaWQgKmRhdGEpCit2b2lkIHVtX3BjYXBfaW5pdChzdHJ1Y3QgbmV0X2Rldmlj
ZSAqZGV2LCB2b2lkICpkYXRhKQogewogCXN0cnVjdCB1bWxfbmV0X3ByaXZhdGUgKnByaTsKIAlz
dHJ1Y3QgcGNhcF9kYXRhICpwcHJpOwotCXN0cnVjdCBwY2FwX2luaXQgKmluaXQgPSBkYXRhOwor
CXN0cnVjdCB1bV9wY2FwX2luaXQgKmluaXQgPSBkYXRhOwogCiAJcHJpID0gbmV0ZGV2X3ByaXYo
ZGV2KTsKIAlwcHJpID0gKHN0cnVjdCBwY2FwX2RhdGEgKikgcHJpLT51c2VyOwpAQCAtMzEsMzIg
KzMxLDMyIEBACiAJcHJpbnRrKCJwY2FwIGJhY2tlbmQsIGhvc3QgaW50ZXJmYWNlICVzXG4iLCBw
cHJpLT5ob3N0X2lmKTsKIH0KIAotc3RhdGljIGludCBwY2FwX3JlYWQoaW50IGZkLCBzdHJ1Y3Qg
c2tfYnVmZiAqc2tiLCBzdHJ1Y3QgdW1sX25ldF9wcml2YXRlICpscCkKK3N0YXRpYyBpbnQgdW1f
cGNhcF9yZWFkKGludCBmZCwgc3RydWN0IHNrX2J1ZmYgKnNrYiwgc3RydWN0IHVtbF9uZXRfcHJp
dmF0ZSAqbHApCiB7CiAJcmV0dXJuIHBjYXBfdXNlcl9yZWFkKGZkLCBza2JfbWFjX2hlYWRlcihz
a2IpLAogCQkJICAgICAgc2tiLT5kZXYtPm10dSArIEVUSF9IRUFERVJfT1RIRVIsCiAJCQkgICAg
ICAoc3RydWN0IHBjYXBfZGF0YSAqKSAmbHAtPnVzZXIpOwogfQogCi1zdGF0aWMgaW50IHBjYXBf
d3JpdGUoaW50IGZkLCBzdHJ1Y3Qgc2tfYnVmZiAqc2tiLCBzdHJ1Y3QgdW1sX25ldF9wcml2YXRl
ICpscCkKK3N0YXRpYyBpbnQgdW1fcGNhcF93cml0ZShpbnQgZmQsIHN0cnVjdCBza19idWZmICpz
a2IsIHN0cnVjdCB1bWxfbmV0X3ByaXZhdGUgKmxwKQogewogCXJldHVybiAtRVBFUk07CiB9CiAK
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgbmV0X2tlcm5faW5mbyBwY2FwX2tlcm5faW5mbyA9IHsKLQku
aW5pdAkJCT0gcGNhcF9pbml0LAorCS5pbml0CQkJPSB1bV9wY2FwX2luaXQsCiAJLnByb3RvY29s
CQk9IGV0aF9wcm90b2NvbCwKLQkucmVhZAkJCT0gcGNhcF9yZWFkLAotCS53cml0ZQkJCT0gcGNh
cF93cml0ZSwKKwkucmVhZAkJCT0gdW1fcGNhcF9yZWFkLAorCS53cml0ZQkJCT0gdW1fcGNhcF93
cml0ZSwKIH07CiAKLWludCBwY2FwX3NldHVwKGNoYXIgKnN0ciwgY2hhciAqKm1hY19vdXQsIHZv
aWQgKmRhdGEpCitpbnQgdW1fcGNhcF9zZXR1cChjaGFyICpzdHIsIGNoYXIgKiptYWNfb3V0LCB2
b2lkICpkYXRhKQogewotCXN0cnVjdCBwY2FwX2luaXQgKmluaXQgPSBkYXRhOworCXN0cnVjdCB1
bV9wY2FwX2luaXQgKmluaXQgPSBkYXRhOwogCWNoYXIgKnJlbWFpbiwgKmhvc3RfaWYgPSBOVUxM
LCAqb3B0aW9uc1syXSA9IHsgTlVMTCwgTlVMTCB9OwogCWludCBpOwogCi0JKmluaXQgPSAoKHN0
cnVjdCBwY2FwX2luaXQpCisJKmluaXQgPSAoKHN0cnVjdCB1bV9wY2FwX2luaXQpCiAJCXsgLmhv
c3RfaWYgCT0gImV0aDAiLAogCQkgIC5wcm9taXNjIAk9IDEsCiAJCSAgLm9wdGltaXplIAk9IDAs
CkBAIC02NSw3ICs2NSw3IEBACiAJcmVtYWluID0gc3BsaXRfaWZfc3BlYyhzdHIsICZob3N0X2lm
LCAmaW5pdC0+ZmlsdGVyLAogCQkJICAgICAgICZvcHRpb25zWzBdLCAmb3B0aW9uc1sxXSwgbWFj
X291dCwgTlVMTCk7CiAJaWYgKHJlbWFpbiAhPSBOVUxMKSB7Ci0JCXByaW50ayhLRVJOX0VSUiAi
cGNhcF9zZXR1cCAtIEV4dHJhIGdhcmJhZ2Ugb24gIgorCQlwcmludGsoS0VSTl9FUlIgInVtX3Bj
YXBfc2V0dXAgLSBFeHRyYSBnYXJiYWdlIG9uICIKIAkJICAgICAgICJzcGVjaWZpY2F0aW9uIDog
JyVzJ1xuIiwgcmVtYWluKTsKIAkJcmV0dXJuIDA7CiAJfQpAQCAtODUsNyArODUsNyBAQAogCQll
bHNlIGlmICghc3RyY21wKG9wdGlvbnNbaV0sICJub29wdGltaXplIikpCiAJCQlpbml0LT5vcHRp
bWl6ZSA9IDA7CiAJCWVsc2UgewotCQkJcHJpbnRrKEtFUk5fRVJSICJwY2FwX3NldHVwIDogYmFk
IG9wdGlvbiAtICclcydcbiIsCisJCQlwcmludGsoS0VSTl9FUlIgInVtX3BjYXBfc2V0dXAgOiBi
YWQgb3B0aW9uIC0gJyVzJ1xuIiwKIAkJCSAgICAgICBvcHRpb25zW2ldKTsKIAkJCXJldHVybiAw
OwogCQl9CkBAIC05NCwyMCArOTQsMjAgQEAKIAlyZXR1cm4gMTsKIH0KIAotc3RhdGljIHN0cnVj
dCB0cmFuc3BvcnQgcGNhcF90cmFuc3BvcnQgPSB7Ci0JLmxpc3QgCQk9IExJU1RfSEVBRF9JTklU
KHBjYXBfdHJhbnNwb3J0Lmxpc3QpLAorc3RhdGljIHN0cnVjdCB0cmFuc3BvcnQgdW1fcGNhcF90
cmFuc3BvcnQgPSB7CisJLmxpc3QgCQk9IExJU1RfSEVBRF9JTklUKHVtX3BjYXBfdHJhbnNwb3J0
Lmxpc3QpLAogCS5uYW1lIAkJPSAicGNhcCIsCi0JLnNldHVwICAJPSBwY2FwX3NldHVwLAorCS5z
ZXR1cCAgCT0gdW1fcGNhcF9zZXR1cCwKIAkudXNlciAJCT0gJnBjYXBfdXNlcl9pbmZvLAogCS5r
ZXJuIAkJPSAmcGNhcF9rZXJuX2luZm8sCiAJLnByaXZhdGVfc2l6ZSAJPSBzaXplb2Yoc3RydWN0
IHBjYXBfZGF0YSksCi0JLnNldHVwX3NpemUgCT0gc2l6ZW9mKHN0cnVjdCBwY2FwX2luaXQpLAor
CS5zZXR1cF9zaXplIAk9IHNpemVvZihzdHJ1Y3QgdW1fcGNhcF9pbml0KSwKIH07CiAKLXN0YXRp
YyBpbnQgcmVnaXN0ZXJfcGNhcCh2b2lkKQorc3RhdGljIGludCB1bV9yZWdpc3Rlcl9wY2FwKHZv
aWQpCiB7Ci0JcmVnaXN0ZXJfdHJhbnNwb3J0KCZwY2FwX3RyYW5zcG9ydCk7CisJcmVnaXN0ZXJf
dHJhbnNwb3J0KCZ1bV9wY2FwX3RyYW5zcG9ydCk7CiAJcmV0dXJuIDA7CiB9CiAKLWxhdGVfaW5p
dGNhbGwocmVnaXN0ZXJfcGNhcCk7CitsYXRlX2luaXRjYWxsKHVtX3JlZ2lzdGVyX3BjYXApOwpk
aWZmIC1OdXIgbGludXgtNS40LjIvYXJjaC91bS9kcml2ZXJzL3BjYXBfdXNlci5jIHVtbC01LjQu
Mi9hcmNoL3VtL2RyaXZlcnMvcGNhcF91c2VyLmMKLS0tIGxpbnV4LTUuNC4yL2FyY2gvdW0vZHJp
dmVycy9wY2FwX3VzZXIuYwkyMDE5LTExLTI0IDE2OjMyOjAxLjAwMDAwMDAwMCAtMDgwMAorKysg
dW1sLTUuNC4yL2FyY2gvdW0vZHJpdmVycy9wY2FwX3VzZXIuYwkyMDE5LTEyLTA2IDIxOjU5OjE4
LjcwOTU4MzA4NyAtMDgwMApAQCAtMzIsNyArMzIsNyBAQAogCXJldHVybiAwOwogfQogCi1zdGF0
aWMgaW50IHBjYXBfb3Blbih2b2lkICpkYXRhKQorc3RhdGljIGludCB1bV9wY2FwX29wZW4odm9p
ZCAqZGF0YSkKIHsKIAlzdHJ1Y3QgcGNhcF9kYXRhICpwcmkgPSBkYXRhOwogCV9fdTMyIG5ldG1h
c2s7CkBAIC00NCwxNCArNDQsMTQgQEAKIAlpZiAocHJpLT5maWx0ZXIgIT0gTlVMTCkgewogCQll
cnIgPSBkZXZfbmV0bWFzayhwcmktPmRldiwgJm5ldG1hc2spOwogCQlpZiAoZXJyIDwgMCkgewot
CQkJcHJpbnRrKFVNX0tFUk5fRVJSICJwY2FwX29wZW4gOiBkZXZfbmV0bWFzayBmYWlsZWRcbiIp
OworCQkJcHJpbnRrKFVNX0tFUk5fRVJSICJ1bV9wY2FwX29wZW4gOiBkZXZfbmV0bWFzayBmYWls
ZWRcbiIpOwogCQkJcmV0dXJuIC1FSU87CiAJCX0KIAogCQlwcmktPmNvbXBpbGVkID0gdW1sX2tt
YWxsb2Moc2l6ZW9mKHN0cnVjdCBicGZfcHJvZ3JhbSksCiAJCQkJCVVNX0dGUF9LRVJORUwpOwog
CQlpZiAocHJpLT5jb21waWxlZCA9PSBOVUxMKSB7Ci0JCQlwcmludGsoVU1fS0VSTl9FUlIgInBj
YXBfb3BlbiA6IGttYWxsb2MgZmFpbGVkXG4iKTsKKwkJCXByaW50ayhVTV9LRVJOX0VSUiAidW1f
cGNhcF9vcGVuIDoga21hbGxvYyBmYWlsZWRcbiIpOwogCQkJcmV0dXJuIC1FTk9NRU07CiAJCX0K
IApAQCAtNTksMTQgKzU5LDE0IEBACiAJCQkJICAgKHN0cnVjdCBicGZfcHJvZ3JhbSAqKSBwcmkt
PmNvbXBpbGVkLAogCQkJCSAgIHByaS0+ZmlsdGVyLCBwcmktPm9wdGltaXplLCBuZXRtYXNrKTsK
IAkJaWYgKGVyciA8IDApIHsKLQkJCXByaW50ayhVTV9LRVJOX0VSUiAicGNhcF9vcGVuIDogcGNh
cF9jb21waWxlIGZhaWxlZCAtICIKKwkJCXByaW50ayhVTV9LRVJOX0VSUiAidW1fcGNhcF9vcGVu
IDogcGNhcF9jb21waWxlIGZhaWxlZCAtICIKIAkJCSAgICAgICAiJyVzJ1xuIiwgcGNhcF9nZXRl
cnIocHJpLT5wY2FwKSk7CiAJCQlnb3RvIG91dDsKIAkJfQogCiAJCWVyciA9IHBjYXBfc2V0Zmls
dGVyKHByaS0+cGNhcCwgcHJpLT5jb21waWxlZCk7CiAJCWlmIChlcnIgPCAwKSB7Ci0JCQlwcmlu
dGsoVU1fS0VSTl9FUlIgInBjYXBfb3BlbiA6IHBjYXBfc2V0ZmlsdGVyICIKKwkJCXByaW50ayhV
TV9LRVJOX0VSUiAidW1fcGNhcF9vcGVuIDogcGNhcF9zZXRmaWx0ZXIgIgogCQkJICAgICAgICJm
YWlsZWQgLSAnJXMnXG4iLCBwY2FwX2dldGVycihwcmktPnBjYXApKTsKIAkJCWdvdG8gb3V0Owog
CQl9CkBAIC03OSw3ICs3OSw3IEBACiAJcmV0dXJuIC1FSU87CiB9CiAKLXN0YXRpYyB2b2lkIHBj
YXBfcmVtb3ZlKHZvaWQgKmRhdGEpCitzdGF0aWMgdm9pZCB1bV9wY2FwX3JlbW92ZSh2b2lkICpk
YXRhKQogewogCXN0cnVjdCBwY2FwX2RhdGEgKnByaSA9IGRhdGE7CiAKQEAgLTEyNyw5ICsxMjcs
OSBAQAogCiBjb25zdCBzdHJ1Y3QgbmV0X3VzZXJfaW5mbyBwY2FwX3VzZXJfaW5mbyA9IHsKIAku
aW5pdAkJPSBwY2FwX3VzZXJfaW5pdCwKLQkub3BlbgkJPSBwY2FwX29wZW4sCisJLm9wZW4JCT0g
dW1fcGNhcF9vcGVuLAogCS5jbG9zZQkgCT0gTlVMTCwKLQkucmVtb3ZlCSAJPSBwY2FwX3JlbW92
ZSwKKwkucmVtb3ZlCSAJPSB1bV9wY2FwX3JlbW92ZSwKIAkuYWRkX2FkZHJlc3MJPSBOVUxMLAog
CS5kZWxldGVfYWRkcmVzcyA9IE5VTEwsCiAJLm10dQkJPSBFVEhfTUFYX1BBQ0tFVCwK

--_002_SN6PR10MB30394F0158533B8AE1151F81E2C90SN6PR10MB3039namp_
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um

--_002_SN6PR10MB30394F0158533B8AE1151F81E2C90SN6PR10MB3039namp_--

