Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EEDC12FF7C
	for <lists+linux-um@lfdr.de>; Sat,  4 Jan 2020 01:20:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BlZqcGGuBXGd8iYv7w+cwh4q8hTUHqzqnhb+sORPHbo=; b=FbPq9CSKbrPvsxF8lTSDONrzv
	3pLLtUBKJtLJd62IdCYW88d2/ROn2nrjYL7IaL0oI1FMtWO7SNOMN5w3sdcU3TGIM+34IlwdPd8xa
	/+Vb/kMgEwz1/gYnB+pWLSSd7IjPxgJZ5TVMHpC6GifIbb8kmCbD1gzuJIJLk9oIULzONvgN6MlDp
	cw1XN/gFVEFo7+11dj2Z74DtqelsHJWzEEPonevQmLv6UJm+kIY2s8N8MHLp5XwU6NyK0uTNcxA5q
	H4NjLY/Gw4z33eNkc0tTnjBKWDwpZIc47ByHOW0HXOc4eCL85XgJ97QIDFk6mMaVQoZ1W8IytnT4y
	79Q3zFfCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inXBO-0007Xq-DI; Sat, 04 Jan 2020 00:20:46 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inXBK-0007XM-Go
 for linux-um@lists.infradead.org; Sat, 04 Jan 2020 00:20:44 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1inWvD-0006zn-NF; Sat, 04 Jan 2020 00:04:03 +0000
Received: from p4fcd91fe.dip0.t-ipconnect.de ([79.205.145.254]
 helo=[192.168.2.118]) by jain.kot-begemot.co.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1inWvB-0004Pt-7H; Sat, 04 Jan 2020 00:04:03 +0000
Subject: Re: Linux UM 5.4 FTBFS: uml_reserved undefined
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <188c72613ff8b15454670dd9de68fefcaa130c74.camel@researchut.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <cbf4ce06-d3a1-6931-44e4-7b0c737221ed@kot-begemot.co.uk>
Date: Sat, 4 Jan 2020 00:04:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <188c72613ff8b15454670dd9de68fefcaa130c74.camel@researchut.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_162042_556645_40005487 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 02/01/2020 16:04, Ritesh Raj Sarraf wrote:
> Hi,
> 
> Happy New Year 2020.
> 
> When trying to prepare the 5.4 version of User Mode Linux for Debian, I
> have run into the following build failure on both the architectures.
> 
> For now, I have disabled VIRTIO_UML to get the new UML into Debian.
> 
> 
>    KSYM    .tmp_kallsyms2.o
>    LD      vmlinux
>    SYSMAP  System.map
>    LINK linux
>    Building modules, stage 2.
>    MODPOST 939 modules
> ERROR: "uml_reserved" [arch/um/drivers/virtio_uml.ko] undefined!
> make[2]: *** [scripts/Makefile.modpost:94: __modpost] Error 1
> make[1]: *** [Makefile:1298: modules] Error 2
> make[1]: Leaving directory '/build/user-mode-linux-5.4-1um/linux-source-5.4'
> make: *** [debian/rules:75: build-stamp] Error 2
> dpkg-buildpackage: error: debian/rules binary subprocess returned exit status 2
> I: copying local configuration
> E: Failed autobuilding of package
> I: unmounting dev/pts filesystem
> I: unmounting dev/shm filesystem
> I: unmounting proc filesystem
> I: unmounting sys filesystem
> I: cleaning the build env

I think we disabled virtio as module because of other reasons as well 
later on. The patch is in the mailing list archive.

Brgds,

A.

> 
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

-- 
Anton R Ivanov

http://www.kot-begemot.co.uk

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
