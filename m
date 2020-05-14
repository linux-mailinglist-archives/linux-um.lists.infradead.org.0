Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 128841D2C7A
	for <lists+linux-um@lfdr.de>; Thu, 14 May 2020 12:22:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xyuqGwwVsCMzrxfDhkFUCRK1hXvsECgWYeKaFS/zPn0=; b=UEtSadspJ/oSe2ACRGffn+AEJ
	NheZ98wsB0O7Ddj4Jg1g5kEQHzLBoZ7yL/WEeuEN7+2Pdlh7mMO1QXzo3cOL6zSt4EPhmr7lc7aue
	I08CpASO4Ki/jg3+xYvxxG3l7mRujsIWdZNVGI6h13f5Tz0PUTMmXILTOCg/H0AZ2D0tZwf3RUoYm
	A+zIYVKiyJWWqZvRDG49D9yXTLH+R+O7Ep8AvLl6xilh5FcXKTtF5zr56ZURnZh9ufyU75APSBgjX
	u9CQXuPItjH/hdBeyVOKqPxWC4wfTQZJcR9YTAQKj6OmEIxkuIM+VLW1Ib7RyKzWxsLeCvwC+2eNf
	yFqCcdiuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZB0H-00043B-Q8; Thu, 14 May 2020 10:22:13 +0000
Received: from www62.your-server.de ([213.133.104.62])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZB0E-00041u-MF
 for linux-um@lists.infradead.org; Thu, 14 May 2020 10:22:12 +0000
Received: from sslproxy02.your-server.de ([78.47.166.47])
 by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.89_1) (envelope-from <daniel@iogearbox.net>)
 id 1jZAzy-0007F0-Dx; Thu, 14 May 2020 12:21:54 +0200
Received: from [178.196.57.75] (helo=pc-9.home)
 by sslproxy02.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <daniel@iogearbox.net>)
 id 1jZAzx-000RXX-Tr; Thu, 14 May 2020 12:21:53 +0200
Subject: Re: [PATCH 11/18] maccess: remove strncpy_from_unsafe
To: David Laight <David.Laight@ACULAB.COM>, Al Viro <viro@zeniv.linux.org.uk>
References: <20200513160038.2482415-1-hch@lst.de>
 <20200513160038.2482415-12-hch@lst.de>
 <CAHk-=wj=u+nttmd1huNES2U=9nePtmk7WgR8cMLCYS8wc=rhdA@mail.gmail.com>
 <20200513192804.GA30751@lst.de>
 <0c1a7066-b269-9695-b94a-bb5f4f20ebd8@iogearbox.net>
 <20200513232816.GZ23230@ZenIV.linux.org.uk>
 <866cbe54-a027-04eb-65db-c6423d16b924@iogearbox.net>
 <6ca8d8499bf644aba0b242d194df5a60@AcuMS.aculab.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <2cc83197-3ecc-b8c2-742d-e953c1f7bf8c@iogearbox.net>
Date: Thu, 14 May 2020 12:21:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <6ca8d8499bf644aba0b242d194df5a60@AcuMS.aculab.com>
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25811/Wed May 13 14:11:53 2020)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_032210_725738_7CCE2E9D 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.133.104.62 listed in list.dnswl.org]
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
Cc: "bpf@vger.kernel.org" <bpf@vger.kernel.org>,
 "linux-parisc@vger.kernel.org" <linux-parisc@vger.kernel.org>,
 Netdev <netdev@vger.kernel.org>, the arch/x86 maintainers <x86@kernel.org>,
 linux-um <linux-um@lists.infradead.org>, Alexei Starovoitov <ast@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-MM <linux-mm@kvack.org>, Masami Hiramatsu <mhiramat@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 "bgregg@netflix.com" <bgregg@netflix.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 5/14/20 12:01 PM, David Laight wrote:
[...]
> If it's not a stupid question why is a BPF program allowed to get
> into a situation where it might have an invalid kernel address.
> 
> It all stinks of a hole that allows all of kernel memory to be read
> and copied to userspace.
> 
> Now you might want to something special so that BPF programs just
> abort on OOPS instead of possibly paniking the kernel.
> But that is different from a copy that expects to be passed garbage.

I suggest you read up on probe_kernel_read() and its uses in tracing in
general, looks like you haven't done that.

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
