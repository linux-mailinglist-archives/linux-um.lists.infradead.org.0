Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CC6A17BC59
	for <lists+linux-um@lfdr.de>; Fri,  6 Mar 2020 13:09:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X81fxSCIXzXTzbPaR357oR2N4v7aFVLAda/x/cYHOPs=; b=KuCBBA8n+tT9Q7
	I7Y8mg+xxKluRahykT4epZGe+5eS8ZPvyZZMdRMQ9ZoNaX35jzjMgHAvxVLh/mjaSKmhBrrPicEyL
	93RMdpELtbe/cuvZQ6jeOx0STOfidYz4cub1RA1QXqDZmsU8vJSOUQxaQAaDz7/iJShSsCepIviLH
	qYdyd9vV2qFVuSL1Dm4TwExWS3TX8uhN4QVUZUukSpnXMSNts38rMvM7FmfOrj0xYKyIcVD5i7ImK
	Vzta95zFU4R+P8mYb4G3xfdYCWORv6c8SCz55bZfnb325YjOZU1DYRlQGNpYKfu5BBeK8oZi+Art0
	PjRtY9Mcm1FZiZ+aL3gQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jABnB-0007kJ-WC; Fri, 06 Mar 2020 12:09:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jABn9-0007jU-Hp
 for linux-um@lists.infradead.org; Fri, 06 Mar 2020 12:09:24 +0000
Received: from localhost (unknown [213.57.247.131])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 023532072D;
 Fri,  6 Mar 2020 12:09:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583496563;
 bh=Epw/1SBsSOcELjkwZa4Cji7Sf1ohOwhNEBKQO2bk1rw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=yWlw4QewSUZWWIWqLR7LY7l0fbg8NJmPxldvDIQ4iDCKkO+ek42QVSiiLc2T9V2F7
 X2fstykUL6kqIxEhNvO+oNFtKxwZvABAeRAaCuhNXDNYMWjmRV+HKRf0UmSfAP/vHG
 QMUychz/x5eID+rlbaONerBCwhNxa8nasLeSoXGQ=
Date: Fri, 6 Mar 2020 14:09:18 +0200
From: Leon Romanovsky <leon@kernel.org>
To: Jakub Kicinski <kuba@kernel.org>
Subject: Re: [PATCH net-next 2/7] RDMA/ipoib: reject unsupported coalescing
 params
Message-ID: <20200306120918.GQ184088@unreal>
References: <20200306010602.1620354-1-kuba@kernel.org>
 <20200306010602.1620354-3-kuba@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306010602.1620354-3-kuba@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_040923_609915_40658403 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mkubecek@suse.cz, merez@codeaurora.org, pv-drivers@vmware.com,
 GR-Linux-NIC-Dev@marvell.com, doshir@vmware.com, manishc@marvell.com,
 linux-rdma@vger.kernel.org, richard@nod.at, jdike@addtoit.com,
 linux-um@lists.infradead.org, edumazet@google.com, jasowang@redhat.com,
 jgg@ziepe.ca, dledford@redhat.com, netdev@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-wireless@vger.kernel.org,
 hayeswang@realtek.com, davem@davemloft.net, kvalo@codeaurora.org,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 05:05:57PM -0800, Jakub Kicinski wrote:
> Set ethtool_ops->supported_coalesce_params to let
> the core reject unsupported coalescing parameters.
>
> This driver did not previously reject unsupported parameters.
>
> Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> ---
>  drivers/infiniband/ulp/ipoib/ipoib_ethtool.c | 2 ++
>  1 file changed, 2 insertions(+)
>

Thanks,
Reviewed-by: Leon Romanovsky <leonro@mellanox.com>

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
