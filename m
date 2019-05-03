Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5901512676
	for <lists+linux-um@lfdr.de>; Fri,  3 May 2019 05:19:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWcJgGzApMvLn7cOD3pgvf1h/wy3/z5+QcyDafyxi9g=; b=jLUODRPVLbgEmf
	y1W7fhQa4w9kktOkGpZ2LQqWZfrwqxZhpm2fovOfCNgtd5HgkjblW+VQsLi8VUYCUONfDN6obCHjj
	nCNtVKUIgINM8WWdt/JFJCev2IMWNB4oW0YuegMX1NNunV73DDDcIFsQ2+F8Vo3MiE1vKUhBIadr1
	o3Ako+BgeCoFmFDIPqEUvPeyoRpNZaQm454JDW6G+DIh7HE1llRHAoON8qk53jL+pjQUMrelhMxKf
	SiTRTU4ekWvIWYgdMsYCbPyN2+PY84F6qKPSIaNeqUz5PNqHtY4N06j2Edsz2VTBtnQb62azQdod5
	HgcSu+CH4hjZjSuQBTcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMOjL-0005oK-Ki; Fri, 03 May 2019 03:19:23 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMOjI-0005o0-Os
 for linux-um@lists.infradead.org; Fri, 03 May 2019 03:19:22 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134]
 helo=[172.20.29.49])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hMOiq-0006pS-Iv; Thu, 02 May 2019 21:18:53 -0600
To: Brendan Higgins <brendanhiggins@google.com>, frowand.list@gmail.com,
 gregkh@linuxfoundation.org, keescook@google.com,
 kieran.bingham@ideasonboard.com, mcgrof@kernel.org, robh@kernel.org,
 sboyd@kernel.org, shuah@kernel.org
References: <20190501230126.229218-1-brendanhiggins@google.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <ea36c3d6-8c13-2186-16f3-596d834aeebe@deltatee.com>
Date: Thu, 2 May 2019 21:18:40 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190501230126.229218-1-brendanhiggins@google.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 173.228.226.134
X-SA-Exim-Rcpt-To: wfg@linux.intel.com, rostedt@goodmis.org,
 rientjes@google.com, richard@nod.at, pmladek@suse.com, mpe@ellerman.id.au,
 knut.omang@oracle.com, khilman@baylibre.com, julia.lawall@lip6.fr,
 joel@jms.id.au, jdike@addtoit.com, daniel@ffwll.ch, dan.j.williams@intel.com,
 dan.carpenter@oracle.com, amir73il@gmail.com, Tim.Bird@sony.com,
 Alexander.Levin@microsoft.com, linux-um@lists.infradead.org,
 linux-nvdimm@lists.01.org, linux-kselftest@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, linux-doc@vger.kernel.org,
 kunit-dev@googlegroups.com, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, shuah@kernel.org, sboyd@kernel.org,
 robh@kernel.org, mcgrof@kernel.org, kieran.bingham@ideasonboard.com,
 keescook@google.com, gregkh@linuxfoundation.org, frowand.list@gmail.com,
 brendanhiggins@google.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
 autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_201921_148399_CA894D04 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 linux-kselftest@vger.kernel.org, linux-nvdimm@lists.01.org,
 khilman@baylibre.com, knut.omang@oracle.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, linux-kernel@vger.kernel.org,
 daniel@ffwll.ch, mpe@ellerman.id.au, linux-fsdevel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 2019-05-01 5:01 p.m., Brendan Higgins wrote:
> ## TLDR
> 
> I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
> 5.2.
> 

As I said on the last posting, I like this and would like to see it move
forward. I still have the same concerns over the downsides of using UML
(ie. not being able to compile large swaths of the tree due to features
that don't exist in that arch) but these are concerns for later.

I'd prefer to see the unnecessary indirection that I pointed out in
patch 8 cleaned up but, besides that, the code looks good to me.

Reviewed-by: Logan Gunthorpe <logang@deltatee.com>

Thanks!

Logan

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
