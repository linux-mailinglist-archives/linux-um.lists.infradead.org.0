Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3101A6E2
	for <lists+linux-um@lfdr.de>; Sat, 11 May 2019 08:46:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JzFPuzNtvNWWU1gqJikvM7qH4ZIH8ZaiV7IiaPA272I=; b=GJocczkPhdMKBn
	vntZLpLESFwymP7dAkZ447wCGbtY3tuNjp5vPnKyu3e31m13GpL3PKAhrGKQ4POIeSFKKB5d2vQKz
	+5r5EyzrmdHHXUP7/th5s9gcweuE5PcrmwK4MEvSvwS2ht+yAcijotHjBRSCZpH4c5ZkSuGTw1Mag
	j1Reqs1l8bafmc3vJn0W71gpAu4GiMwNsWi+qvRM9ljrMgEmq4LXSgbVXPS2mKFmz3ks2tvRZ85S5
	SihQ8g95IIwLFNIotJRcY3m3Cs1Bvp1280qRWNF0qPS248a0dBjiPHkU11fsyEGGlfGSXtX6BtRFK
	OvL4VFZ0ULtAyrXsgaoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPLlu-0001G4-Pg; Sat, 11 May 2019 06:46:14 +0000
Received: from userp2130.oracle.com ([156.151.31.86])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPLlr-0001Fl-Im
 for linux-um@lists.infradead.org; Sat, 11 May 2019 06:46:13 +0000
Received: from pps.filterd (userp2130.oracle.com [127.0.0.1])
 by userp2130.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4B6g6Uq025673;
 Sat, 11 May 2019 06:43:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=message-id : subject
 : from : to : cc : date : in-reply-to : references : content-type :
 mime-version : content-transfer-encoding; s=corp-2018-07-02;
 bh=1QK6W6CC3+ccPxrSKF4xwoDQTey+3Zw3yM7Vill3vMM=;
 b=QQHgm/GpaI2EpKx/jn7Af9br5xSVhUWmBFJd3PkW2bcaGv976ySRePWf8kwN53fDx/wU
 MuQR2dOJUUaxxCw3FeCPwqR7e7SbRaCd+mhoOK/dcK8UbTgKem6mBoNtjwARrxZ3cERN
 qRaeWsGwNlQZtsPQZOJl+mjJYvR5wZYPEdHRf3i+GtOFdr256BsLlD4JITMTzt+eJeMK
 8SWLoBGotUshwFCeu4xcqOc/tVajjJdK/iQzvJZ2GrHjmK0X0F6NKFClch59CdxuaLHa
 eKAWdh42ASUprSfj5Sny1WLuuq8xHB+WSyqJCZKauAUUKn1XACJUOXhYhExQJX47kQ6o 5Q== 
Received: from userp3030.oracle.com (userp3030.oracle.com [156.151.31.80])
 by userp2130.oracle.com with ESMTP id 2sdntt8ab3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 11 May 2019 06:43:48 +0000
Received: from pps.filterd (userp3030.oracle.com [127.0.0.1])
 by userp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x4B6g536022877;
 Sat, 11 May 2019 06:43:47 GMT
Received: from aserv0121.oracle.com (aserv0121.oracle.com [141.146.126.235])
 by userp3030.oracle.com with ESMTP id 2sdkgsucd1-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Sat, 11 May 2019 06:43:47 +0000
Received: from abhmp0017.oracle.com (abhmp0017.oracle.com [141.146.116.23])
 by aserv0121.oracle.com (8.14.4/8.13.8) with ESMTP id x4B6hXIn027461;
 Sat, 11 May 2019 06:43:34 GMT
Received: from asu (/92.220.18.196) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Fri, 10 May 2019 23:43:33 -0700
Message-ID: <a3362d96a6d95d852753739384ded814f5269aac.camel@oracle.com>
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
From: Knut Omang <knut.omang@oracle.com>
To: Frank Rowand <frowand.list@gmail.com>, Brendan Higgins
 <brendanhiggins@google.com>, Daniel Vetter <daniel@ffwll.ch>
Date: Sat, 11 May 2019 08:43:23 +0200
In-Reply-To: <8abaf5f2-dd33-98d0-7b34-b57de7fe7c8b@gmail.com>
References: <a09a7e0e-9894-8c1a-34eb-fc482b1759d0@gmail.com>
 <20190509015856.GB7031@mit.edu>
 <580e092f-fa4e-eedc-9e9a-a57dd085f0a6@gmail.com>
 <20190509032017.GA29703@mit.edu>
 <7fd35df81c06f6eb319223a22e7b93f29926edb9.camel@oracle.com>
 <20190509133551.GD29703@mit.edu>
 <ECADFF3FD767C149AD96A924E7EA6EAF9770D591@USCULXMSG01.am.sony.com>
 <875c546d-9713-bb59-47e4-77a1d2c69a6d@gmail.com>
 <20190509214233.GA20877@mit.edu>
 <b09ba170-229b-fde4-3e9a-e50d6ab4c1b5@deltatee.com>
 <20190509233043.GC20877@mit.edu>
 <8914afef-1e66-e6e3-f891-5855768d3018@deltatee.com>
 <6d6e91ec-33d3-830b-4895-4d7a20ba7d45@gmail.com>
 <a1b88d5add15d43de0468c32d9a2427629337abb.camel@oracle.com>
 <CAKMK7uFd1xUx8u3xWLwifVSq4OEnMO4S-m0hESe68UzONXnMFg@mail.gmail.com>
 <CAFd5g47Fvafwgh15JNfxSBRf5qqG2z+V+XGAB2cJtNnHFTiFfQ@mail.gmail.com>
 <8abaf5f2-dd33-98d0-7b34-b57de7fe7c8b@gmail.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9253
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905110045
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9253
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905110045
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_234611_713091_CB74198C 
X-CRM114-Status: GOOD (  38.59  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.86 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Petr Mladek <pmladek@suse.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Amir Goldstein <amir73il@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Sasha Levin <Alexander.Levin@microsoft.com>,
 Michael Ellerman <mpe@ellerman.id.au>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Shuah Khan <shuah@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-nvdimm <linux-nvdimm@lists.01.org>, Kevin Hilman <khilman@baylibre.com>,
 Kieran Bingham <kieran.bingham@ideasonboard.com>, wfg@linux.intel.com,
 Joel Stanley <joel@jms.id.au>, David Rientjes <rientjes@google.com>,
 Jeff Dike <jdike@addtoit.com>, Dan Carpenter <dan.carpenter@oracle.com>,
 devicetree <devicetree@vger.kernel.org>,
 linux-kbuild <linux-kbuild@vger.kernel.org>, "Bird,
 Timothy" <Tim.Bird@sony.com>, linux-um@lists.infradead.org,
 Steven Rostedt <rostedt@goodmis.org>, Julia Lawall <julia.lawall@lip6.fr>,
 Dan Williams <dan.j.williams@intel.com>, kunit-dev@googlegroups.com,
 Theodore Ts'o <tytso@mit.edu>, Richard Weinberger <richard@nod.at>,
 Stephen Boyd <sboyd@kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 "Luis R. Rodriguez" <mcgrof@kernel.org>, Kees Cook <keescook@google.com>,
 linux-fsdevel@vger.kernel.org, Logan Gunthorpe <logang@deltatee.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Fri, 2019-05-10 at 14:59 -0700, Frank Rowand wrote:
> On 5/10/19 3:23 AM, Brendan Higgins wrote:
> >> On Fri, May 10, 2019 at 7:49 AM Knut Omang <knut.omang@oracle.com> wrote:
> >>>
> >>> On Thu, 2019-05-09 at 22:18 -0700, Frank Rowand wrote:
> >>>> On 5/9/19 4:40 PM, Logan Gunthorpe wrote:
> >>>>>
> >>>>>
> >>>>> On 2019-05-09 5:30 p.m., Theodore Ts'o wrote:
> >>>>>> On Thu, May 09, 2019 at 04:20:05PM -0600, Logan Gunthorpe wrote:
> >>>>>>>
> >>>>>>> The second item, arguably, does have significant overlap with kselftest.
> >>>>>>> Whether you are running short tests in a light weight UML environment or
> >>>>>>> higher level tests in an heavier VM the two could be using the same
> >>>>>>> framework for writing or defining in-kernel tests. It *may* also be valuable
> >>>>>>> for some people to be able to run all the UML tests in the heavy VM
> >>>>>>> environment along side other higher level tests.
> >>>>>>>
> >>>>>>> Looking at the selftests tree in the repo, we already have similar items to
> >>>>>>> what Kunit is adding as I described in point (2) above. kselftest_harness.h
> >>>>>>> contains macros like EXPECT_* and ASSERT_* with very similar intentions to
> >>>>>>> the new KUNIT_EXECPT_* and KUNIT_ASSERT_* macros.
> >>>>>>>
> >>>>>>> However, the number of users of this harness appears to be quite small. Most
> >>>>>>> of the code in the selftests tree seems to be a random mismash of scripts
> >>>>>>> and userspace code so it's not hard to see it as something completely
> >>>>>>> different from the new Kunit:
> >>>>>>>
> >>>>>>> $ git grep --files-with-matches kselftest_harness.h *
> >>>>>>
> >>>>>> To the extent that we can unify how tests are written, I agree that
> >>>>>> this would be a good thing.  However, you should note that
> >>>>>> kselftest_harness.h is currently assums that it will be included in
> >>>>>> userspace programs.  This is most obviously seen if you look closely
> >>>>>> at the functions defined in the header files which makes calls to
> >>>>>> fork(), abort() and fprintf().
> >>>>>
> >>>>> Ah, yes. I obviously did not dig deep enough. Using kunit for
> >>>>> in-kernel tests and kselftest_harness for userspace tests seems like
> >>>>> a sensible line to draw to me. Trying to unify kernel and userspace
> >>>>> here sounds like it could be difficult so it's probably not worth
> >>>>> forcing the issue unless someone wants to do some really fancy work
> >>>>> to get it done.
> >>>>>
> >>>>> Based on some of the other commenters, I was under the impression
> >>>>> that kselftests had in-kernel tests but I'm not sure where or if they
> >>>>> exist.
> >>>>
> >>>> YES, kselftest has in-kernel tests.  (Excuse the shouting...)
> >>>>
> >>>> Here is a likely list of them in the kernel source tree:
> >>>>
> >>>> $ grep module_init lib/test_*.c
> >>>> lib/test_bitfield.c:module_init(test_bitfields)
> >>>> lib/test_bitmap.c:module_init(test_bitmap_init);
> >>>> lib/test_bpf.c:module_init(test_bpf_init);
> >>>> lib/test_debug_virtual.c:module_init(test_debug_virtual_init);
> >>>> lib/test_firmware.c:module_init(test_firmware_init);
> >>>> lib/test_hash.c:module_init(test_hash_init);  /* Does everything */
> >>>> lib/test_hexdump.c:module_init(test_hexdump_init);
> >>>> lib/test_ida.c:module_init(ida_checks);
> >>>> lib/test_kasan.c:module_init(kmalloc_tests_init);
> >>>> lib/test_list_sort.c:module_init(list_sort_test);
> >>>> lib/test_memcat_p.c:module_init(test_memcat_p_init);
> >>>> lib/test_module.c:static int __init test_module_init(void)
> >>>> lib/test_module.c:module_init(test_module_init);
> >>>> lib/test_objagg.c:module_init(test_objagg_init);
> >>>> lib/test_overflow.c:static int __init test_module_init(void)
> >>>> lib/test_overflow.c:module_init(test_module_init);
> >>>> lib/test_parman.c:module_init(test_parman_init);
> >>>> lib/test_printf.c:module_init(test_printf_init);
> >>>> lib/test_rhashtable.c:module_init(test_rht_init);
> >>>> lib/test_siphash.c:module_init(siphash_test_init);
> >>>> lib/test_sort.c:module_init(test_sort_init);
> >>>> lib/test_stackinit.c:module_init(test_stackinit_init);
> >>>> lib/test_static_key_base.c:module_init(test_static_key_base_init);
> >>>> lib/test_static_keys.c:module_init(test_static_key_init);
> >>>> lib/test_string.c:module_init(string_selftest_init);
> >>>> lib/test_ubsan.c:module_init(test_ubsan_init);
> >>>> lib/test_user_copy.c:module_init(test_user_copy_init);
> >>>> lib/test_uuid.c:module_init(test_uuid_init);
> >>>> lib/test_vmalloc.c:module_init(vmalloc_test_init)
> >>>> lib/test_xarray.c:module_init(xarray_checks);
> >>>>
> >>>>
> >>>>> If they do exists, it seems like it would make sense to
> >>>>> convert those to kunit and have Kunit tests run-able in a VM or
> >>>>> baremetal instance.
> >>>>
> >>>> They already run in a VM.
> >>>>
> >>>> They already run on bare metal.
> >>>>
> >>>> They already run in UML.
> >>>>
> >>>> This is not to say that KUnit does not make sense.  But I'm still trying
> >>>> to get a better description of the KUnit features (and there are
> >>>> some).
> >>>
> >>> FYI, I have a master student who looks at converting some of these to KTF, such as
> for
> >>> instance the XArray tests, which lended themselves quite good to a semi-automated
> >>> conversion.
> >>>
> >>> The result is also a somewhat more compact code as well as the flexibility
> >>> provided by the Googletest executor and the KTF frameworks, such as running selected
> >>> tests, output formatting, debugging features etc.
> >>
> >> So is KTF already in upstream? Or is the plan to unify the KTF and
> > 
> > I am not certain about KTF's upstream plans, but I assume that Knut
> > would have CC'ed me on the thread if he had started working on it.
> > 
> >> Kunit in-kernel test harnesses? Because there's tons of these
> > 
> > No, no plan. Knut and I talked about this a good while ago and it
> > seemed that we had pretty fundamentally different approaches both in
> > terms of implementation and end goal. Combining them seemed pretty
> > infeasible, at least from a technical perspective. Anyway, I am sure
> > Knut would like to give him perspective on the matter and I don't want
> > to say too much without first giving him a chance to chime in on the
> > matter.
> > 
> > Nevertheless, I hope you don't see resolving this as a condition for
> > accepting this patchset. I had several rounds of RFC on KUnit, and no
> > one had previously brought this up.
> 
> I seem to recall a request in reply to the KUnit RFC email threads to
> work together.

You recall right.
I wanted us to work together to refine a common approach.
I still think that's possible.

> However whether that impacts acceptance of this patch set is up to
> the maintainer and how she wants to resolve the potential collision
> of KUnit and KTF (if there is indeed any sort of collision).

I believe there's overlap and potential for unification and code sharing.
My concern is to make sure that that can happen without disrupting too 
many test users. I'd really like to get some more time to explore that.

It strikes me that the main difference in the two approaches 
lies in the way reporting is done by default. Since KUnit handles all the
reporting itself, while KTF relies on Googletest for that, a lot more code 
in KUnit revolves around that part, while with KTF we have focused more on 
features to enable writing powerful and effective tests.

The reporting part can possibly be made configurable: Reporting with printk or reporting 
via netlink to user space. In fact, as a KTF debugging option KTF already 
supports printk reporting which can be enabled via sysfs.

If macros can have the same syntax, then there's 
likely features in KTF that KUnit users would benefit from too. 
But this of course have to be tried out.

Knut

> >> in-kernel unit tests already, and every merge we get more (Frank's
> >> list didn't even look into drivers or anywhere else, e.g. it's missing
> >> the locking self tests I worked on in the past), and a more structured
> >> approach would really be good.
> > 
> > Well, that's what I am trying to do. I hope you like it!
> > 
> > Cheers!
> > .
> > 
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
