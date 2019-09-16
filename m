Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC3BDB372A
	for <lists+linux-um@lfdr.de>; Mon, 16 Sep 2019 11:31:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e5kkW1y1W8D1/1B6NxNmVELSli9VOnFpWZNp7f4oBDs=; b=n0avMHlbWS7ReW
	XiX6Q/eeWqzf7rnuVlCANLIYEDnvuC3HyUaBiohiuAZNCJKN7xdLVRdyzYNWId6QiGJidc1XC5Zzt
	fJG09jroEbSrPbcjZF+XfqbB/FVn5XjyWJhw6h7Y0xZc/4NQs9YcoGcT9myZhNqZokxbkZTJS0bkq
	WwD8FRXG1tT3U/uzcyfrvU/nUtrzYYjkar11i4BPfd/yD9V1y2dsLbUQSqHjbEUUEjT1FO3h3Lfnu
	YLho74b4Cir4mM+fP8WhbUzfb9QwxuhdW0V6xQNxbbvHVn3NnkQH6LE9TbJQLRXmXuTfUyVfJ5FxF
	w0U3p4kaDcu7+JP50WMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9nLn-0005q2-4G; Mon, 16 Sep 2019 09:31:15 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9nLi-0005o5-Uh
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 09:31:12 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <johannes@sipsolutions.net>) id 1i9nLh-00068x-Mm
 for linux-um@lists.infradead.org; Mon, 16 Sep 2019 11:31:09 +0200
Message-ID: <68e54546852b921cdd02e9241d583e7e9045ba4d.camel@sipsolutions.net>
Subject: Re: [RFC] synchronised multi-machine time-travel APIs
From: Johannes Berg <johannes@sipsolutions.net>
To: linux-um@lists.infradead.org
Date: Mon, 16 Sep 2019 11:31:08 +0200
In-Reply-To: <a216fef2119146de27168d0cf91ffa2f2b970e77.camel@sipsolutions.net>
References: <a216fef2119146de27168d0cf91ffa2f2b970e77.camel@sipsolutions.net>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190916_023110_984442_EE0361AA 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-09-16 at 11:27 +0200, Johannes Berg wrote:
> 
> 2) The virtio/vhost-user framework is really not suited for synchronous
>    calls, I have to jump quite some hoops to make this work, polling the
>    return virtqueue's notifications, etc., and keep a lot of buffers and
>    SG structures around etc.

Some more thought on that: virtqueues always pass buffers back and
forth, and the UML system needs to provide buffers even for the tiny
messages, since we cannot communicate otherwise. This is great for bulk
transfers in virtio, but for the tiny 16-byte messages we're passing
it's kind of inefficient.

As a result, I didn't want to have many of them submitted for "RX" at
the same time and used only one, but then if the simulation calendar has
to send multiple messages I actually ended up resorting to polling there
until buffers are available, again a bit ugly.

If we simply have a (blocking) socket between them, we can write() the
small messages there and read() them out on the other side, without
having to worry about buffer allocations etc.

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
