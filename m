Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D82EB4A14
	for <lists+linux-um@lfdr.de>; Tue, 17 Sep 2019 11:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KJ93MsGsgrFGdAgxwTA5D19bUrow+Wo6WFf+szFO2sM=; b=DPc4xgkzv+eJPOTFE9/OvApP1
	NT6KWtkH9gj9AiMlawQxeXkhoXSjNbQVD5JiVIsfEZx+f/z6Njo5mb7Mf2JTqDp5X703DUoccQ5oJ
	R+wiqx1Gd2MASLPu3wqAfjLNN+V0+tA1mkqnzFM1jINBktE989DQFPm6Ou0mF/AAOKcI3DKzRXOIr
	nHnu7vlEmWAI5mKS7XGRElIUKSXkmaHyKEHPqUz9FBKW2f+wV0Sm/DjMv/Gbo9796HYF/nLxVDjd4
	NKmDQIC67qhv5vsAYKX6R49CHyT75kdTsb4fTykraNn7pUrmTRc3XnwEG0mkFidacFR7Hvlnd+0kJ
	fAp2MAANQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA9Uv-00046y-Sy; Tue, 17 Sep 2019 09:10:10 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA9Us-00039q-FS
 for linux-um@lists.infradead.org; Tue, 17 Sep 2019 09:10:08 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iA9Uk-0007Dm-Ll; Tue, 17 Sep 2019 09:10:01 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1iA9Ui-0002U4-B7; Tue, 17 Sep 2019 10:09:58 +0100
Subject: Re: [RFC v2 2/2] um: implement time-travel=ext
To: Johannes Berg <johannes@sipsolutions.net>, linux-um@lists.infradead.org
References: <1568671815-I895f9019593bd579566f14e5af9346e3c9b56f28@changeid>
 <1568671815-I0c06fae89d77d5b272dfb4c7ea64641b597b5c7b@changeid>
 <7583ac26d787ddf211473166136836f3472bf31e.camel@sipsolutions.net>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <1dd9e658-a6cd-39dd-09c7-d68ebcd7078c@cambridgegreys.com>
Date: Tue, 17 Sep 2019 10:09:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <7583ac26d787ddf211473166136836f3472bf31e.camel@sipsolutions.net>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_021006_535759_AB259F22 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 16/09/2019 23:14, Johannes Berg wrote:
> On Tue, 2019-09-17 at 00:10 +0200, Johannes Berg wrote:
>>
>>   arch/um/drivers/virtio_uml.c          |  59 ++++++-
>>   arch/um/include/linux/time-internal.h |  28 +++
>>   arch/um/include/shared/os.h           |   1 +
>>   arch/um/kernel/skas/syscall.c         |   3 +-
>>   arch/um/kernel/time.c                 | 243 ++++++++++++++++++++++++--
>>   arch/um/os-Linux/file.c               |  31 ++++
>>   include/uapi/linux/um_timetravel.h    | 107 ++++++++++++
>>   7 files changed, 458 insertions(+), 14 deletions(-)
>>   create mode 100644 include/uapi/linux/um_timetravel.h
> 
> FWIW, this does seem nicer than
> 
>>   arch/um/Kconfig                       |  13 ++
>>   arch/um/drivers/virtio_uml.c          | 204 ++++++++++++++++-
>>   arch/um/include/linux/time-internal.h |  14 ++
>>   arch/um/include/shared/os.h           |   6 +
>>   arch/um/kernel/time.c                 | 315 +++++++++++++++++++++++++-
>>   arch/um/os-Linux/file.c               | 116 ++++++++++
>>   include/uapi/linux/virtio_ids.h       |   2 +
>>   include/uapi/linux/virtio_simtime.h   |  99 ++++++++
>>   8 files changed, 755 insertions(+), 14 deletions(-)
>>   create mode 100644 include/uapi/linux/virtio_simtime.h
> 
> (which isn't even the whole story, I neglected one of the patches)
> 
> 
> Also, it seems somewhat faster - my virtio-based one usually ran in a
> bit over 1.5 seconds, this one usually takes around 1.1-1.2 seconds for
> the same test.
> 
> It does still have a bug with interrupt delivery, I get a warning there
> that I need to check out, I doubt it'll affect the code much though.
> 
> johannes
> 
> 
> _______________________________________________
> linux-um mailing list
> linux-um@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-um
> 

Cool.

I hope you do not mind - will repeat my ask. Can we have a series off 
let's say current 5.x with all patches ready for test/review.

Some of your patches have 3-4 versions with a fixed version coming 
nearly immediately thereafter and for some of them I am a bit lost which 
versions should I test/review at present.

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
