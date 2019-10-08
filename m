Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B992BCFC33
	for <lists+linux-um@lfdr.de>; Tue,  8 Oct 2019 16:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=qdX6pDjkvopgS9sd5dLNb58TZ55MGwnbmvTZejxkhjw=; b=lrdHqYGMkIwWRk+2DEKMyN5wM
	tZzier3YXkrJz5VS5YLA9OPjYR8pqxDiL0OsMWrcos028JHxp1fQqUhNddNrrRJYsm42kosoyeS8t
	qDLh6HX00hBpb1Yu2gPTyHgSgdHSYp0aacFBAJLF9hWuEDFQy0d8RbScRGQfowU1upLIE6hRGk6KX
	by2tZWOF3wOTfKwktH1tXCGm0MKnk+0H57VZmRs5uV2rNlwZkNFxLZptEjYpaEegqKwgPB3R/Jnc8
	q524ik1FB8vN1+hxAWLaTjn3qyfxdi9Fd0pCyZKijfBYaRwsfAJw/DRkg64rxy6YWgekEhUSTNQGw
	fQpaKvxig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHqJ6-00071V-Kw; Tue, 08 Oct 2019 14:17:44 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHqJ3-0006xN-Pp
 for linux-um@lists.infradead.org; Tue, 08 Oct 2019 14:17:43 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iHqIx-0003vd-OD; Tue, 08 Oct 2019 14:17:35 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iHqIv-0001RE-Au; Tue, 08 Oct 2019 15:17:35 +0100
Subject: Re: [PATCH 2/2] um: drivers: Add virtio vhost-user driver
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <20190731202942.29630-1-johannes@sipsolutions.net>
 <20190731202942.29630-2-johannes@sipsolutions.net>
 <50395b43-5952-0df5-b753-b3de4c246ed4@cambridgegreys.com>
 <8718663842671e3d825ccc8eef6f9669a5a85884.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <3cb5a05b-1b63-24e0-be1b-383c7b9230e0@cambridgegreys.com>
Date: Tue, 8 Oct 2019 15:17:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <8718663842671e3d825ccc8eef6f9669a5a85884.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_071741_852078_5B0CFA93 
X-CRM114-Status: GOOD (  14.97  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 Erel Geron <erelx.geron@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 08/10/2019 12:57, Johannes Berg wrote:
> On Tue, 2019-10-08 at 10:26 +0100, Anton Ivanov wrote:
> 
>> It just hit me - this violates UML security model.
> 
> Hmm.
> 
>> In UML (and any virtualization for that matter) the guest side is never
>> allowed to specify any paths, files, etc locations on the host side.
> 
> Yeah, I guess that makes sense.
> 
>> This driver accepts a path argument to a host side path being supplied
>> by the guest side.
> 
> Right, sort of.
> 
>> One way of getting around this will be to sort out what uml does for
>> iomem and make it generic and not just memory and just boot time.
>>
>> This way boot or uml_mconsole can supply a file id and a driver can
>> associate with this id.
> 
> Or maybe just not allow this to be a module? Then it cannot be loaded
> from inside, and the command-line must be given from outside, I think?
> We could change it to use __uml_setup() too.

That would do it.

> 
> Perhaps with kexec() it's possible to influence the next kernel's
> command line though, but that might already be an issue then?

It is an issue, if kexec works.

I do not quite see how UML memory set-up and initial setup will work if 
you try to kexec UML from UML.

In fact, you will need a specially built kernel to start with, the 
normal UML kernel build should not work.
> 
> johannes
> 
> 

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
