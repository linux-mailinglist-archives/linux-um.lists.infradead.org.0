Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9232B14BC6D
	for <lists+linux-um@lfdr.de>; Tue, 28 Jan 2020 15:58:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a4yAbRUTo6BnLZNld9wJ/l62byKclfc7TWV0UaCVzsM=; b=sZbWLEbnpcU3i5
	PVwMHUbhVT4zBDX7OPUAti4Tm9oTLamLCdhTFORfFeJz8aIKUGrGcsuUnEUUfeBZQ6IrtH6kq2o++
	cFJnGHSq2Xecwhh66G/4DdRvxh6AGoTPIGNfqIdqd3mhxUx31BqIHi8a9RMya+l41zUFNSQnNXwHE
	9iqi5EAYN80/yIDxy8wJAedGRtPjwV0dMWFNo0PLC71+oa9S/LliGIhHU/HEdaGtpf03su8ZG4ZBn
	D/rMOFurCkgR1J+0vSAzJn7g2hHgt5um56boeV67VFa/Pcknw5+UDnjAFxh5v2VOuxNuUN8jPBSoQ
	KZfmDTz9oA6HW/At/Kvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwSJl-0006Il-3o; Tue, 28 Jan 2020 14:58:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwSJi-0006I3-9j
 for linux-um@lists.infradead.org; Tue, 28 Jan 2020 14:58:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id 2so6717108pfg.12
 for <linux-um@lists.infradead.org>; Tue, 28 Jan 2020 06:58:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xVg7yvmtWgmr43KxLTmI3D7lMD6VbKHeVc6c1ksu9WU=;
 b=cAoClRy3JAZUhXmD5tD9S6sAgFkmXeMAWWyZj4AyoV+mQvhmXqkmysZ/PpYCpQMh4q
 8URdcdKQjwDsls1KxHWOxtxJs9XXcM5qF6IluaXDwPXEre3psp1G3a+T5Szjt/gPDOKg
 Lba5C4uWOILvq46slE+w3i+qqsxfGe3CwCTqQiHcKGjPEjd8qBGPadaQPhkAeRmusLf4
 YMCDIEgpzRKl9cBTa1EYKwF+HoBNNiOxh9VdbuT8aai/yBMXWC5DtJnnWKy5kVEqwA2U
 wF4V2/UN70Gq8OEmZd7yA+tb5TMmL6/imGvzthSSzdfv7+0L916YpT4Axr0cgaJrPDjA
 HI2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xVg7yvmtWgmr43KxLTmI3D7lMD6VbKHeVc6c1ksu9WU=;
 b=gVaRDTZnPynKZ1oTgIYdIZiRcfwJ5g404kDwAZpLSKOSlecIbGih8KI3BwyV47XPOg
 n4bj4ScplWmPGtYFpLxlvWtFsuj+T9CCEwLaPlcEXYijy0YmTrrl0onP/FXgWEF2ZYeC
 K12GDE0ZDJLkbQgh//KL32x89baAGn5TP5ETvBlY9T4EQ0bQt6Zpl4I8BUQHf3fG7EUz
 YWs2Ia0oqTFbMEia5z/ORULcteNcfirQEcn+caWs2ocCuVcNa+6hS6ZF8PL8o0F1IKys
 3wtR5b5mDOmsJk96FroiUbLkt2isbryIV+cy1JkJGFsSswfgLZ+rSl7wBkvmQ4sz4chD
 d/1A==
X-Gm-Message-State: APjAAAV2P8YTUO2vZQMn0ceNAWAVw+6FdQd9+GvfGVB6CAsvl6jDzWBh
 9txackUtaDYKaM2zPHTD90w=
X-Google-Smtp-Source: APXvYqxNf1EXoNBaASlV1mmB+s43Ce4o89OK8f/drmebdoVYbgswj1SeuD+turU5RtHfze5RRLx7Qw==
X-Received: by 2002:a65:4b89:: with SMTP id t9mr11059341pgq.102.1580223490422; 
 Tue, 28 Jan 2020 06:58:10 -0800 (PST)
Received: from localhost (c-73-241-114-122.hsd1.ca.comcast.net.
 [73.241.114.122])
 by smtp.gmail.com with ESMTPSA id x7sm20743774pfp.93.2020.01.28.06.58.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 Jan 2020 06:58:09 -0800 (PST)
Date: Tue, 28 Jan 2020 06:58:07 -0800
From: Richard Cochran <richardcochran@gmail.com>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 4/5] ptp: 1588_clock_ines: add unspecified HAS_IOMEM
 dependency
Message-ID: <20200128145807.GA2492@localhost>
References: <20200127235356.122031-1-brendanhiggins@google.com>
 <20200127235356.122031-5-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200127235356.122031-5-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_065814_362533_414D1879 
X-CRM114-Status: UNSURE (   7.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richardcochran[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: heidifahim@google.com, richard@nod.at, jdike@addtoit.com,
 linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 davidgow@google.com, netdev@vger.kernel.org, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 03:53:55PM -0800, Brendan Higgins wrote:
> Currently CONFIG_PTP_1588_CLOCK_INES=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
> 
> /usr/bin/ld: drivers/ptp/ptp_ines.o: in function `ines_ptp_ctrl_probe':
> drivers/ptp/ptp_ines.c:795: undefined reference to `devm_ioremap_resource'
> 
> Fix the build error by adding the unspecified dependency.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>

Acked-by: Richard Cochran <richardcochran@gmail.com>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
