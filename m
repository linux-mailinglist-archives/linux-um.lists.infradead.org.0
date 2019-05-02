Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A054211AC2
	for <lists+linux-um@lfdr.de>; Thu,  2 May 2019 16:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YhaP96z0fp4z6Zf1vBHGpNS3XjBwCI2CT/vW9YpSiTk=; b=NNtUjFvWlV9nWkrIgAmJh4mIo
	tfjAZPfHHBGRKEDm7xTM4NjVtofRLtZFqK3D/aUL9HqWlBPRa38/6YCWlkAex5Ksq1Nuzjvi36goU
	4xeKABpmkihVqxitQEwFKshfJhD+AHJF5Qvmf282+SpZ1SMyd2cXoNStbK7FnCZhg0obyTtVJPsC6
	xbLBsCNDQsBSvt8/Zae4Vls4fBx1VqjEBw1LRKUteyHyhlGFerjova2jUvdg9h9vcAolE/SV3Af9t
	yXGcDb5nIMgrWtVTtp9z/Q4cUtYx0zX9kpXPRXNJ9vRMAZtvqXTA1DFzqZiu+7bSHlIuBeq4prTyq
	/KMTxkhCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMCKB-0005Y6-Fk; Thu, 02 May 2019 14:04:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMCK8-0005XS-IT
 for linux-um@lists.infradead.org; Thu, 02 May 2019 14:04:34 +0000
Received: from [192.168.1.112] (c-24-9-64-241.hsd1.co.comcast.net
 [24.9.64.241])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AB3F1206DF;
 Thu,  2 May 2019 14:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1556805870;
 bh=Wa7agHm7Un4ja3yaCvgGgD1ND3pUZJ7MD4aKZiRFMCM=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=yX5jTSzrUif4ca3k3xa8i9BRvwX2CoEc3LSZADtQzBQU989uyUErZwEyIeGvuAtbz
 UMq4IZzjZwSlSfIlEfCCs4JueRJdLmpmGVu4hBGn/PniD+9zEIFE0G2oc27b7amOah
 TyFD1OvQOYCZcqsTjmi92jjUJmi6G3VQLb2z3k/0=
Subject: Re: [PATCH v2 00/17] kunit: introduce KUnit, the Linux kernel unit
 testing framework
To: Greg KH <gregkh@linuxfoundation.org>,
 Brendan Higgins <brendanhiggins@google.com>
References: <20190501230126.229218-1-brendanhiggins@google.com>
 <20190502105053.GA12416@kroah.com>
From: shuah <shuah@kernel.org>
Message-ID: <76e84d54-6b7e-8cc1-492b-43822fc43ac4@kernel.org>
Date: Thu, 2 May 2019 08:04:14 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190502105053.GA12416@kroah.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_070432_630462_21A18B7F 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, frowand.list@gmail.com,
 robh@kernel.org, linux-nvdimm@lists.01.org, khilman@baylibre.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com, wfg@linux.intel.com,
 joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org, shuah <shuah@kernel.org>,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, richard@nod.at, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/2/19 4:50 AM, Greg KH wrote:
> On Wed, May 01, 2019 at 04:01:09PM -0700, Brendan Higgins wrote:
>> ## TLDR
>>
>> I rebased the last patchset on 5.1-rc7 in hopes that we can get this in
>> 5.2.
> 
> That might be rushing it, normally trees are already closed now for
> 5.2-rc1 if 5.1-final comes out this Sunday.
> 
>> Shuah, I think you, Greg KH, and myself talked off thread, and we agreed
>> we would merge through your tree when the time came? Am I remembering
>> correctly?
> 
> No objection from me.
> 

Yes. I can take these through kselftest tree when the time comes.
Agree with Greg that 5.2 might be rushing it. 5.3 would be a good
target.

thanks,
-- Shuah




_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
