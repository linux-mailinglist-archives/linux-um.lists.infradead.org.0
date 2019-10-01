Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2030EC2E68
	for <lists+linux-um@lfdr.de>; Tue,  1 Oct 2019 09:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MaZba0in9R3s1wxWT6+fWv0LYrZLqIhMAldxOYL1Nb0=; b=JjpD0LyIlngE2t
	QEEDf5OhU26jw6jQxJGTCJPd3TiGBafWou2IN0DYW4hSRwyTHasMip1LIjGrA1+zm3cgClpZYJa17
	K+97kBWjgExwnN+6CHWctat5f2p5IPWJVZStBgY+8JtNI8SsbRWYYerxCssBSnlAc/4rIq/SXD8Wo
	pgcTap3Um7oYUgNSduOl5I1H4wA7ESY8S5S08bJ+LCSSxIhsEKHpXVyg0VMmoYbl2OD+JRNGeNsRW
	IPsDBI8lk+3MgfPUK9ZWDti0MqK0eG/yy26+HK0uPfTqWTyQAnVUe60fFZZJ2p0A+WAl4OD26Y2HP
	o87/9fyIacTAT0zV/eTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCvo-0008Cn-FJ; Tue, 01 Oct 2019 07:50:48 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCvl-0008CK-4N
 for linux-um@lists.infradead.org; Tue, 01 Oct 2019 07:50:46 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.92.2) (envelope-from <johannes@sipsolutions.net>)
 id 1iFCvg-0001MW-Vt; Tue, 01 Oct 2019 09:50:41 +0200
Message-ID: <89e6fd612acc081accd278287f96afc8efbcc16c.camel@sipsolutions.net>
Subject: Re: [PATCH] um: Loadable BPF "Firmware" for vector drivers
From: Johannes Berg <johannes@sipsolutions.net>
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>, 
 linux-um@lists.infradead.org
Date: Tue, 01 Oct 2019 09:50:39 +0200
In-Reply-To: <20190930131939.29354-1-anton.ivanov@cambridgegreys.com>
References: <20190930131939.29354-1-anton.ivanov@cambridgegreys.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_005045_171657_82F4BF23 
X-CRM114-Status: GOOD (  19.00  )
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
Cc: rrs@debian.org, richard@nod.at, 938962@bugs.debian.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, 2019-09-30 at 14:19 +0100, Anton Ivanov wrote:
> All vector drivers now allow a BPF program to be loaded and
> associated with the RX socket in the host kernel.
> 
> 1. The program can be loaded as an extra kernel command line
> option to any of the drivers.
> 
> 2. The program can also be loaded as "firmware", using the
> ethtool flash option. It is possible to turn this facility
> on or off using a command line option.
> 
> A simplistic wrapper for generating the BPF firmware for the raw
> socket driver out of a tcpdump/libpcap filter expression can be
> found at: https://github.com/kot-begemot-uk/uml_vector_utilities/

That's kinda cool.

Why just BPF though, not eBPF with all that brings?

Or is that because the BPF filter is actually attached to the socket in
the host, if I'm reading this correctly?


Couple of style nits below:

> +static bool get_bpf_flash(struct arglist *def)
> +{
> +	return uml_vector_fetch_arg(def, "bpfflash") != NULL;
> +}
> +
> +

Needs just one blank line?

> @@ -1125,6 +1142,7 @@ static int vector_net_close(struct net_device *dev)
>  	netif_stop_queue(dev);
>  	del_timer(&vp->tl);
>  
> +
>  	if (vp->fds == NULL)
>  		return 0;

not needed
 
> @@ -1139,6 +1157,8 @@ static int vector_net_close(struct net_device *dev)
>  	}
>  	tasklet_kill(&vp->tx_poll);
>  	if (vp->fds->rx_fd > 0) {
> +		if (vp->bpf)
> +			uml_vector_detach_bpf(vp->fds->rx_fd, vp->bpf);
>  		os_close_file(vp->fds->rx_fd);
>  		vp->fds->rx_fd = -1;
>  	}

I guess you moved some code here or something and the blank line was
left?

> +/*
> + * We cannot use the firmware.c loader API here because this is not a module
> + *  and we do not have a proper device structure to pass to it as required
> + *  by the firmware API
> + */

You just have to make up a platform device, see e.g. net/wireless/reg.c.
IMHO better than open-coding all this.

> @@ -1528,8 +1618,9 @@ static void vector_eth_configure(
>  		.in_write_poll		= false,
>  		.coalesce		= 2,
>  		.req_size		= get_req_size(def),
> -		.in_error		= false
> -		});
> +		.in_error		= false,
> +		.bpf			= NULL
> +	});

That's not really needed, but I guess you have everything here anyway.

> +int uml_vector_detach_bpf(int fd, void *bpf)
> +{
> +	struct sock_fprog *prog = bpf;
> +
> +	int err = setsockopt(fd, SOL_SOCKET, SO_DETACH_FILTER, bpf, sizeof(struct sock_fprog));

Spurious blank line, line too long.
 
> -void *uml_vector_default_bpf(int fd, void *mac)
> +	if (err < 0)
> +		printk(KERN_ERR BPF_DETACH_FAIL, prog->len, prog->filter, fd, -errno);

also looks pretty long

> +	return err;
> +}
> +void *uml_vector_default_bpf(void *mac)
>  {
>  	struct sock_filter *bpf;
>  	uint32_t *mac1 = (uint32_t *)(mac + 2);
>  	uint16_t *mac2 = (uint16_t *) mac;
> -	struct sock_fprog bpf_prog = {
> -		.len = 6,
> -		.filter = NULL,
> -	};
> +	struct sock_fprog *bpf_prog;
>  
> +	bpf_prog = uml_kmalloc(sizeof(struct sock_fprog), UM_GFP_KERNEL);
> +	if (bpf_prog != NULL) {

generally, kernel coding style prefers to remove " != NULL" (per
checkpatch, anyway)

> +		bpf_prog->len = DEFAULT_BPF_LEN;
> +		bpf_prog->filter = NULL;
> +	} else
> +		return NULL;

and braces on all branches of if statements

johannes


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
