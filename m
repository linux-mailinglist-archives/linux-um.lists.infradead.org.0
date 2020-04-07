Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 036C61A1190
	for <lists+linux-um@lfdr.de>; Tue,  7 Apr 2020 18:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mWaAKkm6Bk34UdDRu51N2BNnCjW9fwFqEH1VbVBAAZE=; b=AajkrSlIItxC90HIy91wUzcny
	YqXd0ykxeRw9k1mWED2tl5AsKXD2XmtajK7ywOvGaBrAJuBUOcdXgfhbcTrbyJdohwInmi8qdFCB+
	1+SWlf6daSRZCBFV2oB3XzlPimvG+AzK5P887d5O7SblTtDzMu1azKbX5hAJAit3OHj7Gd+xZne5B
	41SLTCeM2YgEqs+1OBmqSSR/PuENsghcUsO5ZR84haABlr9qYDVsUljp19j6aUqcdRH+gYJVE9dGW
	tq9+wIJ26cufEZOhuZ6P/GmUXSlHhifViUCLyqkmzx49d7tuyoPtKadCX4DPp8iFfMvFWeN7AUBBe
	j+CvXblGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLrDQ-0004T7-2R; Tue, 07 Apr 2020 16:36:44 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLrDM-0004SQ-Bi
 for linux-um@lists.infradead.org; Tue, 07 Apr 2020 16:36:42 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jLrDG-0006X0-4k; Tue, 07 Apr 2020 16:36:34 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1jLrDD-0002Ns-K4; Tue, 07 Apr 2020 17:36:33 +0100
Subject: Re: Documentation for UML Vector network
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
 <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
 <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <f64a6f99-8e20-9825-75eb-358054935807@kot-begemot.co.uk>
Date: Tue, 7 Apr 2020 17:36:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_093640_398605_079AE4F1 
X-CRM114-Status: GOOD (  13.42  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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



On 14/02/2020 11:38, Ritesh Raj Sarraf wrote:
> Hi Anton,
> 
> On Wed, 2020-02-12 at 15:54 +0000, Anton Ivanov wrote:
>> In first instance I intend to update that. There is actually a .rd
>> markup version in progress for the next kernel versions.
>>
>> A wiki will be nice, because there is no way to fit all new UML
>> features like direct tunnel/overlay attachment, time travel, etc in
>> the documentation in the kernel tree.
> 
> A follow-up question.
> 
> The traditional UML networking modes supported slirp, which allowed for
> unprivileged networking access.
> 
> Is that something achievable with UML Vector network ?
> We have a use case where we want to be able be capable to use UML with
> network features. But do not have necessary privileges to set
> networking up on the host.

Apologies for the delay, I was started writing it in February, but had to drop it and work on something else for most of March.

The first 3 sections are at: https://github.com/kot-begemot-uk/uml-howto-v2

This includes vector driver documentation.

I will continue working through the old howto rearranging the sections as I go along and adding the new stuff.

Once it is all done and assembled, the end result should be a fully revised doc.

I am happy to handle proposed changes as pull requests.

Brgds,

> 
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
