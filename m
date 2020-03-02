Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29DC1176486
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 21:00:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iohsHeI+pPxcFzXjX/d4RclFQuG8HZetaleZk8o29iM=; b=fZSHMgOoKJZf3h
	SF5MQ/+9ME1GYWq024NbI07plQQEdSXQWb2lWBhkc72kXozZlxIyZJonNsZUdviw8EIrZ0pkoV2rg
	W+v7jeqD2p3/8hrPnp5mYaOnBfSbrRuvAAzfI9m8FgRF8fP3QG9UHB9JPFjWDoDNDjrbbmS10yxx1
	JzmAcLCrvPg+ZpLeKDAoUv1xDGyHqiKKevh0zlz3EGmBKaWlXql+Q0wbGjCPeJHAJBJxX4gd6hQ6t
	nM60z9YcXCB0cBE5nzCYk8AB6t0pvAvwHhwaO561R4wQzYdib449Ii0bbSIgWkIoVRRcKSHydA0il
	i/D4muaYLlx0BWGvbnlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8rF0-0007er-NQ; Mon, 02 Mar 2020 20:00:38 +0000
Received: from mail-pj1-f65.google.com ([209.85.216.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8rEu-0007XE-7V
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 20:00:34 +0000
Received: by mail-pj1-f65.google.com with SMTP id 12so243935pjb.5
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 12:00:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=eha5O4PDESWCMGJ9xv9C6hsbviURSXHrEZj1b6AN74w=;
 b=eNqZTP8P42j7Bfo9B4phxgZw4dEmYjuMCz7xG9KQHZR3SYkyG9Nz7Y+Fb1REFIp2xT
 Cg+F2WRfypqfUPGgjspHQVIEIEdt1F6Si2NqpwRjDa4dXjxEI40AWC5y+/JOykmuyRlj
 Btvjt9/0BdBMbNToQ2ymmv5hWrL7SjwPDpm8X6jVeNHcEKMBqnmZN9fnxp7EF1lZmNCR
 HeLYyRzDST9uUlHtVxD0xmfcjRQs87P/Kjg0oE0J9iVu6N/M50WEORr4yDKQGMHzV2Rd
 bu8vBRU/tZ1NvL39msoE80gzixWDy3krmG0cvLxmB/nPo4To+lQrJ6qKIhcIRPZut/EI
 dg/g==
X-Gm-Message-State: ANhLgQ08dTQX2vLz1AIK9m7hkwa1KLEe3wGXN3AN27pD+T8NPaPSqO7B
 aiOYgNQUqK7HudvLlejI3Vw=
X-Google-Smtp-Source: ADFU+vtuBEA5RFTwmgEPxMVETCPNW0efmSmnHAxCShQAfQUWpkiYAg9vQ83ecTjj51b/s1wKzCokOw==
X-Received: by 2002:a17:90a:928a:: with SMTP id
 n10mr124327pjo.194.1583179231233; 
 Mon, 02 Mar 2020 12:00:31 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id u12sm22392960pgr.3.2020.03.02.12.00.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 12:00:29 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 39EE7413C3; Mon,  2 Mar 2020 20:00:27 +0000 (UTC)
Date: Mon, 2 Mar 2020 20:00:27 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v2 4/7] init: main: add KUnit to kernel init
Message-ID: <20200302200027.GG11244@42.do-not-panic.com>
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-5-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200130230812.142642-5-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_120032_302358_FFB5AB69 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-doc@vger.kernel.org, linux-kselftest@vger.kernel.org,
 frowand.list@gmail.com, anton.ivanov@cambridgegreys.com,
 linux-arch@vger.kernel.org, richard@nod.at, knut.omang@oracle.com,
 rppt@linux.ibm.com, yzaikin@google.com, keescook@chromium.org, arnd@arndb.de,
 jdike@addtoit.com, linux-um@lists.infradead.org, davidgow@google.com,
 skhan@linuxfoundation.org, kunit-dev@googlegroups.com, alan.maguire@oracle.com,
 sboyd@kernel.org, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 akpm@linux-foundation.org, logang@deltatee.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Jan 30, 2020 at 03:08:09PM -0800, Brendan Higgins wrote:
> Remove KUnit from init calls entirely, instead call directly from
> kernel_init().
> 
> Co-developed-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>

Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>

In particular the placement and strategy matches my expectations and
allows us to think of __init as a separate beast, as we should.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
