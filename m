Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B120014C11A
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 20:35:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8y4ytuFuqSy7JHIydj27MfPXg4hp/PXjUgTA1158s4=; b=QDblbPJhoKN8AM
	NFaqoBf9wwUHfA+YyRNNLln+pwgQhs65Mey82YsXGMZfzqxtrTPFEtKRnV7OANny0gElacrRaKJn/
	paTHlz+e6iF957DB96cbbIaJX5KABr4P0V6UlCmLJjJF1fRO3EVmFixYCDoBzfjAQq94ZIBgJQH1Y
	DLhfoCAcVw89Q7yIxlMlBDKCRCysj+Yolb+fI7BQJNoFDDGhBT2dTt8V/VkIc0az7weskKzGPi5OU
	/Gyoz5ol+UFItnKmTYUAQ+rnVa3MaFe6MT0xVtUKMOAMlcN3qIzKYk5gzDvKPTZDKrtE9v8bdIiyt
	dPR73lo5KES4p43M849Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwWeM-00041B-10; Tue, 28 Jan 2020 19:35:50 +0000
Received: from mail-mw2nam10on2096.outbound.protection.outlook.com
 ([40.107.94.96] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwWeJ-00040E-1F
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 19:35:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IcF4mqFnZk/XUT2aGpfXJEmQ6U45kuCk7tV1MJhqLsnK0RBwNfR1e7cayu8SPGITvzZIz5x0yeaUrLCWTNOSgXQ1S7xn+NupM9gMusd11q4AegQcLarhd9qV8f4DF2sgHoxrOlnBwHaLgmfaX1R1/s1FoB4y+adVw40QKuQhTckRIxv2OFlsaN/ovJ/pvFvJC5H7qH6o2mpvUziKaVLWsPFlBz5he4wJPrhpGrOm1EtoLkXBfYghjwDfR+pUp9G+YwLnG1picAo3z8uKF0Gt5b/GxcuZqFCzzf8KIYNB4WkIKn0L3zk0kz8JrIUUIa7j1kB6dsFU6DyW59wZhKroMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ckjDaMseEr8tjiNEb5FxiP6iDw0crNsTT9WFY8qhIJA=;
 b=gLw0cfwNMWYBJYvGZotwrWEqZElIhBSxS4f/iTZNSsuY+rt7CDo9xdWxz9xxJMz/2mGKf6igjKtIdV5Vh3Ol7TwbHnqNnLgsTpXbAFryOOrk6MZU65Ui8wVpR+Ktu9Ib7U2l+GnzjWlNrxSHq8vBMXqHRJoiN6QlOKmgfK6xTmQODRU0s4YhYlEK2hfAEXh4tQOEbP0LNE2BZ9BtrHjc/YY7uQP083ibtTraUVsRR76JemHrYmO8YXTmV5DIkHr5O3omLqIZ1GFfCDIOZStL5Ip1XgMi4UwHxU8Hx6PwSGhVrdwsUPvLdAnKrTiQPTLk6CkRTqatJc+HS02OjraQhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 160.33.194.230) smtp.rcpttodomain=gmail.com smtp.mailfrom=sony.com;
 dmarc=pass (p=none sp=none pct=100) action=none header.from=sony.com;
 dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Sony.onmicrosoft.com; 
 s=selector2-Sony-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ckjDaMseEr8tjiNEb5FxiP6iDw0crNsTT9WFY8qhIJA=;
 b=vFz1DmAmcTVRpFAmgh4pXV75vkRVoXbC2l9sX/GhwZtjYzML8nOrosVPQUui8IdMw8jW+jOnFbY+0JDcDzfS5BJLugHd1/tKyAZDpDsdJjEHSLCXWYmTxurPnqcBhkbXI2j2wMMKhXPiPvH4J2cR7xM07poAyl7ClRm0j83Xz84=
Received: from DM5PR13CA0038.namprd13.prod.outlook.com (2603:10b6:3:7b::24) by
 BYAPR13MB2535.namprd13.prod.outlook.com (2603:10b6:a02:c0::21) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2686.14; Tue, 28 Jan 2020 19:35:41 +0000
Received: from BL2NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::202) by DM5PR13CA0038.outlook.office365.com
 (2603:10b6:3:7b::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.18 via Frontend
 Transport; Tue, 28 Jan 2020 19:35:40 +0000
Authentication-Results: spf=pass (sender IP is 160.33.194.230)
 smtp.mailfrom=sony.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=pass action=none header.from=sony.com;
Received-SPF: Pass (protection.outlook.com: domain of sony.com designates
 160.33.194.230 as permitted sender) receiver=protection.outlook.com;
 client-ip=160.33.194.230; helo=usculsndmail03v.am.sony.com;
Received: from usculsndmail03v.am.sony.com (160.33.194.230) by
 BL2NAM02FT030.mail.protection.outlook.com (10.152.77.172) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.18 via Frontend Transport; Tue, 28 Jan 2020 19:35:40 +0000
Received: from usculsndmail12v.am.sony.com (usculsndmail12v.am.sony.com
 [146.215.230.103])
 by usculsndmail03v.am.sony.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with
 ESMTP id 00SJZdVn009995; Tue, 28 Jan 2020 19:35:39 GMT
Received: from USCULXHUB08V.am.sony.com (hub.bc.in.sel.sony.com
 [146.215.231.169])
 by usculsndmail12v.am.sony.com (Sentrion-MTA-4.3.2/Sentrion-MTA-4.3.2) with
 ESMTP id 00SJZcuk001152; Tue, 28 Jan 2020 19:35:38 GMT
Received: from USCULXMSG17.am.sony.com ([146.215.231.83]) by
 USCULXHUB08V.am.sony.com ([146.215.231.169]) with mapi id 14.03.0439.000;
 Tue, 28 Jan 2020 14:35:37 -0500
From: <Tim.Bird@sony.com>
To: <frowand.list@gmail.com>, <brendanhiggins@google.com>
Subject: RE: [RFC v1 0/6] kunit: create a centralized executor to dispatch
 all KUnit tests
Thread-Topic: [RFC v1 0/6] kunit: create a centralized executor to dispatch
 all KUnit tests
Thread-Index: AQHVxOJdmky63MdyM0ynfLJLDg5Ekqf5RkiAgAX1ZACAAOTtgIAAvUGA//+z/cA=
Date: Tue, 28 Jan 2020 19:35:36 +0000
Message-ID: <ECADFF3FD767C149AD96A924E7EA6EAF982C9840@USCULXMSG17.am.sony.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
 <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
In-Reply-To: <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [146.215.231.6]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:160.33.194.230; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10019020)(4636009)(39860400002)(376002)(136003)(396003)(346002)(199004)(189003)(316002)(70206006)(8676002)(336012)(246002)(110136005)(54906003)(7696005)(26005)(70586007)(478600001)(86362001)(7416002)(4326008)(33656002)(55846006)(2906002)(53546011)(186003)(8936002)(2876002)(55016002)(426003)(956004)(5660300002)(37786003)(356004)(5001870100001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:BYAPR13MB2535; H:usculsndmail03v.am.sony.com;
 FPR:; SPF:Pass; LANG:en; PTR:mail.sonyusa.com,mail03.sonyusa.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6cf45af0-4f3c-4edd-c44a-08d7a429422f
X-MS-TrafficTypeDiagnostic: BYAPR13MB2535:
X-Microsoft-Antispam-PRVS: <BYAPR13MB253589FC302C1CBEFA39C8B0FD0A0@BYAPR13MB2535.namprd13.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8882;
X-Forefront-PRVS: 029651C7A1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M9XdkSa6zlIaCoDocneK/G8DuravTpCOSs/+/1E9rRxRa8nRT/FJoGOeP8C/proR+GVu1xPkd1h3dlnG+n+eGy1a7LOmhU1hC9wXImafVv5Y2o6LPjsn4v+O8Af8fPqr22hlV3lhX4+JymabHrdYQ3HIZYofVtq4nqQNbYer3cpyPj+GKGdMbdp/RoC2lxAC1wZhKLmO+sYYXEtV2Y9lOr94l2OeJKQ0RubvNyNwD4zNrwsUgMAzmkJ0I/WZVXWKez+Ij0E8ovNqZJJZwgEgCJF5dXRb+rW5WIR17sGlvQ65v7Z+pyGWI07jw5x1uW9hf1jidLrKSluYbitE5IwFY9Ten1yKOOu1AaNnD8hubNU+MEk4Y1sB10jUgR1cjhtAyjeeQK6TT+3299fJ8AenTpbtD1b+Tpdev2YfOZCayUw1pFVEKKZN2F4T/31Ls9Kn/lNKec/SaTvDe6XO8nDJQh/kuUbbv2A4PPMQFYceE2jb5cfbBpkf3SeaOYI6ITWl
X-OriginatorOrg: sony.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jan 2020 19:35:40.6695 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6cf45af0-4f3c-4edd-c44a-08d7a429422f
X-MS-Exchange-CrossTenant-Id: 66c65d8a-9158-4521-a2d8-664963db48e4
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=66c65d8a-9158-4521-a2d8-664963db48e4; Ip=[160.33.194.230];
 Helo=[usculsndmail03v.am.sony.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR13MB2535
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_113547_101742_5C4A4125 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.96 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: logang@deltatee.com, linux-arch@vger.kernel.org,
 linux-kselftest@vger.kernel.org, keescook@chromium.org, arnd@arndb.de,
 gregkh@linuxfoundation.org, sboyd@kernel.org, richard@nod.at,
 jdike@addtoit.com, knut.omang@oracle.com, linux-kernel@vger.kernel.org,
 rppt@linux.ibm.com, linux-um@lists.infradead.org, mcgrof@kernel.org,
 kunit-dev@googlegroups.com, davidgow@google.com, skhan@linuxfoundation.org,
 akpm@linux-foundation.org, yzaikin@google.com, alan.maguire@oracle.com,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



> -----Original Message-----
> From:  Frank Rowand on January 28, 2020 11:37 AM
> 
> On 1/28/20 1:19 AM, Brendan Higgins wrote:
> > On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
...
> > we could add Kconfigs to control this, but the compiler nevertheless
> > complains because it doesn't know what phase KUnit runs in.
> >
> > Is there any way to tell the compiler that it is okay for non __init
> > code to call __init code? I would prefer not to have a duplicate
> > version of all the KUnit libraries with all the symbols marked __init.
> 
> I'm not sure.  The build messages have always been useful and valid in
> my context, so I never thought to consider that possibility.
> 
> > Thoughts?

I'm not sure there's a restriction on non __init code calling __init
code.  In init/main.c arch_call_reset_init() is in __init, and it calls
rest_init which is non __init, without any special handling.

Is the compiler complaint mentioned above related to  calling
into __init code, or with some other issue?
 -- Tim

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
