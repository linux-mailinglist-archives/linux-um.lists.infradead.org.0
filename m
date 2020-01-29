Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7833A14CB21
	for <lists+linux-um@lfdr.de>; Wed, 29 Jan 2020 14:07:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mt2D73aAJw59wKCzzC8/kYxABuTXMPJREDiHs+NZ82w=; b=rhSJZQuU6b1I0M
	RWEihvO9ze3scU80vDrPjRmfiQAOKgHx6WrUTq76hzluGiT8tBAGV1wiu5e7cXjWuEg2v+eQ3/2i4
	cTxyVRDseJ5vJ/WbeEOKlb8AWFZkJewuRzOWYBTU3vhYdneaG8Z9zkJEVq7pIhWMHhHQh270Ay+Ks
	QtE+3bSIxSWkUttsDjDBONGqkMFA9rCD+gWp4JZ38rMiO774ABZwbewyWY3aOX7LYRsULm8F23zBP
	R8uMgJbxH2fnyxQAcGNPDf0f53phg8kOc9NFoYscTGfTe4Oj/DG/srK7PaYiEPn5rYrd3y+Sb1TEJ
	qNfbtbHCOnrgw2SoSnag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwn45-0000KT-3K; Wed, 29 Jan 2020 13:07:29 +0000
Received: from aserp2120.oracle.com ([141.146.126.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwn42-0000Jt-3h
 for linux-um@lists.infradead.org; Wed, 29 Jan 2020 13:07:27 +0000
Received: from pps.filterd (aserp2120.oracle.com [127.0.0.1])
 by aserp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00TCrF6V012228;
 Wed, 29 Jan 2020 13:06:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : in-reply-to : message-id : references : mime-version :
 content-type; s=corp-2019-08-05;
 bh=Ti8ZyKANi8j7nbulPgsnFv9qnobLhcvfN7U/r0qXW7E=;
 b=LBahaheaQvC3glSE4e8w07NZ4e3ZMriTaXdGJFAtdGuB2GraI+YteA2MAbZxwfBTY40l
 HuZOessuTUnU1X5x8qqSgOHwbIT3he0G7GFxjbucwmqWYzAg9vrCZOtPyYtgwsZaELFN
 38ehsE4YZg7gSOr3FVgmNTR78IouMyz495eIB+OVXsAXUX4nhPY3Si8mx674EUqUspNb
 oTfEjDX3f6tkSraJ5DpYPTZ6L2R/BZPFU1ipG/iplPG/0uvRjWxioS0A3mPFCuB/5W//
 4D0PM+bSYqdUSdkw5oRq90y+YnxoCvbLbLHTlrpR8hNTmumssS+LR4PhOD3m4SjzFvFO Fg== 
Received: from aserp3020.oracle.com (aserp3020.oracle.com [141.146.126.70])
 by aserp2120.oracle.com with ESMTP id 2xrdmqn5ff-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 Jan 2020 13:06:54 +0000
Received: from pps.filterd (aserp3020.oracle.com [127.0.0.1])
 by aserp3020.oracle.com (8.16.0.27/8.16.0.27) with SMTP id 00TD2TvJ000907;
 Wed, 29 Jan 2020 13:06:54 GMT
Received: from userv0121.oracle.com (userv0121.oracle.com [156.151.31.72])
 by aserp3020.oracle.com with ESMTP id 2xtmr94ng4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Wed, 29 Jan 2020 13:06:53 +0000
Received: from abhmp0013.oracle.com (abhmp0013.oracle.com [141.146.116.19])
 by userv0121.oracle.com (8.14.4/8.13.8) with ESMTP id 00TD6lGS005320;
 Wed, 29 Jan 2020 13:06:47 GMT
Received: from dhcp-10-175-173-43.vpn.oracle.com (/10.175.173.43)
 by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Wed, 29 Jan 2020 05:06:46 -0800
Date: Wed, 29 Jan 2020 13:06:34 +0000 (GMT)
From: Alan Maguire <alan.maguire@oracle.com>
X-X-Sender: alan@dhcp-10-175-173-43.vpn.oracle.com
To: Frank Rowand <frowand.list@gmail.com>
Subject: Re: [RFC v1 0/6] kunit: create a centralized executor to dispatch
 all KUnit tests
In-Reply-To: <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
Message-ID: <alpine.LRH.2.20.2001291006570.13921@dhcp-10-175-173-43.vpn.oracle.com>
References: <20191216220555.245089-1-brendanhiggins@google.com>
 <20200106224022.GX11244@42.do-not-panic.com>
 <CAFd5g456c2Zs7rCvRPgio83G=SrtPGi25zbqAUyTBHspHwtu4w@mail.gmail.com>
 <594b7815-0611-34ea-beb5-0642114b5d82@gmail.com>
 <CAFd5g469TWzrLKmQNR2i0HACJ3FEu-=4-Rk005g9szB5UsZAcw@mail.gmail.com>
 <e801e4ac-b7c2-3d0a-71e7-f8153a3dfbc8@gmail.com>
User-Agent: Alpine 2.20 (LRH 67 2015-01-07)
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9514
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=3
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1911140001 definitions=main-2001290108
X-Proofpoint-Virus-Version: vendor=nai engine=6000 definitions=9514
 signatures=668685
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=3 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1911140001
 definitions=main-2001290107
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200129_050726_246330_3D235316 
X-CRM114-Status: GOOD (  30.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [141.146.126.78 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Brendan Higgins <brendanhiggins@google.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Anton Ivanov <anton.ivanov@cambridgegreys.com>, linux-arch@vger.kernel.org,
 Richard Weinberger <richard@nod.at>, Knut Omang <knut.omang@oracle.com>,
 rppt@linux.ibm.com, Iurii Zaikin <yzaikin@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jeff Dike <jdike@addtoit.com>, linux-um <linux-um@lists.infradead.org>,
 David Gow <davidgow@google.com>, Shuah Khan <skhan@linuxfoundation.org>,
 KUnit Development <kunit-dev@googlegroups.com>,
 Alan Maguire <alan.maguire@oracle.com>, Stephen Boyd <sboyd@kernel.org>,
 Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Luis Chamberlain <mcgrof@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, 28 Jan 2020, Frank Rowand wrote:

> On 1/28/20 1:19 AM, Brendan Higgins wrote:
> > On Mon, Jan 27, 2020 at 9:40 AM Frank Rowand <frowand.list@gmail.com> wrote:
> >>
> >> On 1/23/20 4:40 PM, Brendan Higgins wrote:
> >>> Sorry for the late reply. I am still catching up from being on vacation.
> >>>>> On Mon, Jan 6, 2020 at 2:40 PM Luis Chamberlain <mcgrof@kernel.org> wrote:
> >>>> It does beg the question if this means kunit is happy to not be a tool
> >>>> to test pre basic setup stuff (terminology used in init.c, meaning prior
> >>>> to running all init levels). I suspect this is the case.
> >>>
> >>> Not sure. I still haven't seen any cases where this is necessary, so I
> >>> am not super worried about it. Regardless, I don't think this patchset
> >>> really changes anything in that regard, we are moving from late_init
> >>> to after late_init, so it isn't that big of a change for most use
> >>> cases.
> >>>
> >>> Please share if you can think of some things that need to be tested in
> >>> early init.
> >>
> >> I don't have a specific need for this right now.  I had not thought about
> >> how the current kunit implementation forces all kunit tests to run at a
> >> specific initcall level before reading this email thread.
> >>
> >> I can see the value of being able to have some tests run at different
> >> initcall levels to verify what functionality is available and working
> >> at different points in the boot sequence.
> > 
> > Let's cross that bridge when we get there. It should be fairly easy to
> > add that functionality.
> 
> Yes. I just wanted to add the thought to the back of your mind so that
> it does not get precluded by future changes to the kunit architecture.
> 
> > 
> >> But more important than early initcall levels, I do not want the
> >> framework to prevent using or testing code and data that are marked
> >> as '__init'.  So it is important to retain a way to invoke the tests
> >> while __init code and data are available, if there is also a change
> >> to generally invoke the tests later.
> > 
> > Definitely. For now that still works as long as you don't build KUnit
> > as a module, but I think Alan's new patches which allow KUnit to be
> > run at runtime via debugfs could cause some difficulty there. Again,
> 
> Yes, Alan's patches are part of what triggered me thinking about the
> issues I raised.
> 
>

As Brendan says, any such tests probably shouldn't be buildable
as modules, but I wonder if we need to add some sort of way
to ensure execution from debugfs is not allowed for such cases?
Even if a test suite is builtin, it can be executed via debugfs
in the patches I sent out, allowing suites to be re-run.  Sounds
like we need a way to control that behaviour based on the
desired test suite execution environment.

Say, for example, the "struct kunit_suite" definitions associated
with the tests was marked as __initdata; are there any handy macros to 
identify it as being in the __init section? If so, we could simply
avoid adding a "run" file to the debugfs representation for such
suites.  Failing that, perhaps we need some sort of flags field
in "struct kunit_suite" to specify execution environment constraints?

Thanks!

Alan

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
