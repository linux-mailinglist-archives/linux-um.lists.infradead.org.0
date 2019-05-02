Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE744121C2
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 20:15:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iAoezx0aGX0SD9tnw6P71kDHyjahqV87nl+16KZrPfk=; b=mKnVLPp74eDo3u
	Fr18i4e6EH4I3QQDCL7zOpuiDfwQvqMGrKBsS9fTEsdNd1tXJysig+oPTJEK60X+r30ao9vxw0t2h
	Z3ocMjfo8k1YlrO561gCUETNzozR/cKiugo1BvlDAysU2J1GjlxAkWTT3MgskGoegpLYstGN3qznR
	AeEjQ+gKqmw6RVtaNCE8ob8VWkubEYtvbGjOTfUCTw1SKkkYKaWIOwm8tss9uF2jiMoOfOI06xjd9
	09ttBucnJSEq4aoeZrwpZTLQZ4DRcXILRduiSbPseBLeC3MH/W1PQNXOJ/aFhgWyiXVhR1gJ20ZXR
	JNxq7CefbsANU1KAP67Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMGEy-0002A5-4U; Thu, 02 May 2019 18:15:28 +0000
Received: from mail-eopbgr710094.outbound.protection.outlook.com
 ([40.107.71.94] helo=NAM05-BY2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMGEv-00028X-9C
 for linux-um@lists.infradead.org; Thu, 02 May 2019 18:15:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Sony.onmicrosoft.com; 
 s=selector1-Sony-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Iu+qU7j1g4e0qKYY8NI+jYs8IDMeXiI9rKB2912aQxk=;
 b=RUlxFd43z0o0UbNfcJc6XxkFUNZRjbE6rDjHopszHC++6umPBCdj0bHYmEu7/iA8OAlvWwEHPLv4Yg1CRE6zRz/uncBnYwU/smDnizFcPa8KTi/iq744WUooeJBhZ48XuxmeUwYKfjzNGNs1IeBdyoq+75fOWCNe+LpZq2kMfXQ=
Received: from DM5PR13CA0023.namprd13.prod.outlook.com (2603:10b6:3:23::33) by
 DM5PR13MB1402.namprd13.prod.outlook.com (2603:10b6:3:124::14) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.9; Thu, 2 May 2019 18:15:13 +0000
Received: from CY1NAM02FT045.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by DM5PR13CA0023.outlook.office365.com
 (2603:10b6:3:23::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1856.6 via Frontend
 Transport; Thu, 2 May 2019 18:15:13 +0000
Authentication-Results: spf=permerror (sender IP is 160.33.194.229)
 smtp.mailfrom=sony.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=none action=none
 header.from=sony.com;
Received-SPF: PermError (protection.outlook.com: domain of sony.com used an
 invalid SPF mechanism)
Received: from usculsndmail02v.am.sony.com (160.33.194.229) by
 CY1NAM02FT045.mail.protection.outlook.com (10.152.75.111) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.1856.11 via Frontend Transport; Thu, 2 May 2019 18:15:10 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
 [146.215.230.103])
 by usculsndmail02v.am.sony.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with
 ESMTP id x42IF8nt010260; Thu, 2 May 2019 18:15:08 GMT
Received: from USCULXHUB07V.am.sony.com (usculxhub07v.am.sony.com
 [146.215.231.168])
 by usculsndmail12v.am.sony.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with
 ESMTP id x42IF6Jm028842; Thu, 2 May 2019 18:15:06 GMT
Received: from USCULXMSG01.am.sony.com ([fe80::b09d:6cb6:665e:d1b5]) by
 USCULXHUB07V.am.sony.com ([146.215.231.168]) with mapi id 14.03.0439.000;
 Thu, 2 May 2019 14:15:06 -0400
From: <Tim.Bird@sony.com>
To: <gregkh@linuxfoundation.org>, <brendanhiggins@google.com>
Subject: RE: [PATCH v2 16/17] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Thread-Topic: [PATCH v2 16/17] kernel/sysctl-test: Add null pointer test for
 sysctl.c:proc_dointvec()
Thread-Index: AQHVAHJbh4bzAud+AEekHmLRH8eTgKZX75eAgAA1NbA=
Date: Thu, 2 May 2019 18:14:53 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF9770A3A0@USCULXMSG01.am.sony.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190501230126.229218-17-brendanhiggins@google.com>
 <20190502110347.GE12416@kroah.com>
In-Reply-To: <20190502110347.GE12416@kroah.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [146.215.228.6]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:160.33.194.229; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10019020)(1496009)(376002)(136003)(396003)(39860400002)(346002)(2980300002)(448002)(199004)(189003)(13464003)(72206003)(478600001)(47776003)(46406003)(37786003)(33656002)(97756001)(86362001)(70206006)(5660300002)(70586007)(356004)(6666004)(102836004)(186003)(426003)(11346002)(446003)(336012)(26005)(476003)(66066001)(55016002)(76176011)(7696005)(229853002)(8676002)(126002)(55846006)(85326001)(246002)(86152003)(8746002)(8936002)(486006)(50466002)(6246003)(7406005)(7416002)(4326008)(6116002)(3846002)(2906002)(110136005)(54906003)(2876002)(316002)(7736002)(305945005)(23726003)(5001870100001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR13MB1402; H:usculsndmail02v.am.sony.com;
 FPR:; SPF:PermError; LANG:en; PTR:mail.sonyusa.com,mail02.sonyusa.com; A:1;
 MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f2927ae1-d49f-4bad-60b8-08d6cf2a1ea6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(2017052603328)(7193020);
 SRVR:DM5PR13MB1402; 
X-MS-TrafficTypeDiagnostic: DM5PR13MB1402:
X-Microsoft-Antispam-PRVS: <DM5PR13MB140230E0A68E41CAF530C442FD340@DM5PR13MB1402.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 0025434D2D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: bU7dXAdMkBInmgFf3lbIAW/yrfjtPBT7xmHmRhPy+u/F81wqySYLneMKTgJ9uy6f0YnZlYzBIkUsJAFTKMvemgB8r0n8PpNut2dmxJyH0Tk3YniGZd66ERVNzNrefJVodv/kWUa6hgaki3mMtJp344RiOE+WDa1J6M1g8Xj9npIFmFbrKiNIqwy1kXQ1Nos1+jmUPPhdwmrCrUM652L4NDdpkYmrbJHGyo9Ki1uRlPub4F9xawbOv81NFQPbIr5jHTyV64qs0ySjS1hcXMVutCtRZYsHhbYXhA/h75upZypux1FfLor+rwCD2yUnL3L99DmemLALTzZurd+QM2IHPlRwBxUAIqwKyaM/GkcGTDxtfN/V3xavfSUHvudrqzxUZr4qoNFcRzjn8zuSDnhx4cCFFWZq6LryN47KBRJZgiU=
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2019 18:15:10.9314 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f2927ae1-d49f-4bad-60b8-08d6cf2a1ea6
X-MS-Exchange-CrossTenant-Id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=66c65d8a-9158-4521-a2d8-664963db48e4; Ip=[160.33.194.229];
 Helo=[usculsndmail02v.am.sony.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR13MB1402
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_111525_326484_962C54F1 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.71.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, yzaikin@google.com, khilman@baylibre.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, jdike@addtoit.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Greg KH 
> 
> On Wed, May 01, 2019 at 04:01:25PM -0700, Brendan Higgins wrote:
> > From: Iurii Zaikin <yzaikin@google.com>
> >
> > KUnit tests for initialized data behavior of proc_dointvec that is
> > explicitly checked in the code. Includes basic parsing tests including
> > int min/max overflow.
> >
> > Signed-off-by: Iurii Zaikin <yzaikin@google.com>
> > Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> > ---
> >  kernel/Makefile      |   2 +
> >  kernel/sysctl-test.c | 292
> +++++++++++++++++++++++++++++++++++++++++++
> >  lib/Kconfig.debug    |   6 +
> >  3 files changed, 300 insertions(+)
> >  create mode 100644 kernel/sysctl-test.c
> >
> > diff --git a/kernel/Makefile b/kernel/Makefile
> > index 6c57e78817dad..c81a8976b6a4b 100644
> > --- a/kernel/Makefile
> > +++ b/kernel/Makefile
> > @@ -112,6 +112,8 @@ obj-$(CONFIG_HAS_IOMEM) += iomem.o
> >  obj-$(CONFIG_ZONE_DEVICE) += memremap.o
> >  obj-$(CONFIG_RSEQ) += rseq.o
> >
> > +obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
> 
> You are going to have to have a "standard" naming scheme for test
> modules, are you going to recommend "foo-test" over "test-foo"?  If so,
> that's fine, we should just be consistant and document it somewhere.
> 
> Personally, I'd prefer "test-foo", but that's just me, naming is hard...

My preference would be "test-foo" as well.  Just my 2 cents.
 -- Tim


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
