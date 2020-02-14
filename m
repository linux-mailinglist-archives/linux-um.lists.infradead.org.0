Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0978E15D8C8
	for <lists+linux-um@lfdr.de>; Fri, 14 Feb 2020 14:51:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Qk7BFsItB0AsLNdxX9u/F9L07C/0WIWCdxwzR9KdqAI=; b=PR0BKjLc3I05PhUzHYlYS++2H
	ctP+JR9U/zXZBlbIcd5pyxCsQdLZ1B7/Uz2jXoxzhi6117pjhgyoKDssSC9H07LuKWtUfJx1oo183
	yMtrMt9Asl/3SSlDzFHW8XMcvV7BiGrY52LNBy1ZXdSEP1nGtemqee/zoVptrAuoQ1SEBY1UabXnP
	tSixF4JrusYuXM2wuF6Pvcwn9vPgjSHbLG1d8QWnhdAF7qVk0bMoeu/P8UDfrPrG2/pv7zEM8L8zc
	3aVpTnn80twmSYyS6qTvSGOHQu/qinTdMYMR2Lu+9JD3odq9tiZbImYbvyql9zxC2gdEIsIT71gxy
	Cv9rs8PtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2bNm-0004DX-LJ; Fri, 14 Feb 2020 13:51:50 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2bNj-0004DB-TY
 for linux-um@lists.infradead.org; Fri, 14 Feb 2020 13:51:49 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1j2bNg-0004Pc-03; Fri, 14 Feb 2020 13:51:44 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@kot-begemot.co.uk>)
 id 1j2bNd-0001VR-Nn; Fri, 14 Feb 2020 13:51:43 +0000
Subject: Re: Documentation for UML Vector network
To: rrs@researchut.com, linux-um@lists.infradead.org
References: <7c37a3f7310c0be2202ada464e31c2d4d424c502.camel@researchut.com>
 <32d50bed-cfdb-288a-181c-e186143c8169@kot-begemot.co.uk>
 <44b7a3a49731dfabe9cdfbeb281ad9470e71b625.camel@researchut.com>
 <c6774e9e-7811-cbbb-eea5-83e5045b59e9@kot-begemot.co.uk>
 <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
From: Anton Ivanov <anton.ivanov@kot-begemot.co.uk>
Message-ID: <f2e45b10-b4e9-e7d0-b6d9-153b086c46b0@kot-begemot.co.uk>
Date: Fri, 14 Feb 2020 13:51:41 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <41e0199cf2ad126bca3047d18e14493ab903bbe6.camel@researchut.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_055147_955725_AA7EB279 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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

If "completely unprivileged" networking is desired, it is achievable 
with an external slirp helper.

We may need to update UML utilities so it talks to an existing transport 
in UML (f.e. one of the unix domain socket ones).

Alternatively, if we are talking from a distro packaging perspective, I 
would suggest giving the UML binary raw socket capabilities the way 
tcpdump and wireshark postinst do it.

After that it can just hook up to a suitable interface in the system 
using raw sockets while running as unprivileged user.


> We have a use case where we want to be able be capable to use UML with
> network features. But do not have necessary privileges to set
> networking up on the host.
> 
> 

Brgds,


-- 
Anton R. Ivanov
https://www.kot-begemot.co.uk/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
