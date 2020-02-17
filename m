Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 893A3160BF0
	for <lists+linux-um@lfdr.de>; Mon, 17 Feb 2020 08:54:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JYpfGE270/EgcRR6btCTTOy9iMMjBj4iT40jycJ6ga4=; b=RzIuDBHxKR5qebSnAd7SCRjUd
	UkO2vJL+2OEw4xeCt5WErEL/kk86DKAnakXqmxBtlUaME6YuhVckR+5uEfdzupWwihEDYKtUj/D/E
	LkfZiL9IlqDx/9AtzwvCkVpQO53eakiviTXeiSF0lv67dIRwG8Zh2uQWsqDJVib27bEYWz/vUqxkh
	2n09XbrBTqqR59omEmyi4IdI6JuWa64myFESheaXW9a8V0Z+m9OwNZLhhBvVIm4pk/ZHUIzku4Bx1
	QFOu5IKshELUJFj1FSYiJRjZuaKRWYkY2tlouL6pf+cEbMlQE+zO3gPC+pVJ9sVn74St5RLKBYIES
	Q5+Gzw3CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3bED-0000df-7n; Mon, 17 Feb 2020 07:54:05 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3bEA-0000cm-Av
 for linux-um@lists.infradead.org; Mon, 17 Feb 2020 07:54:04 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j3bE0-00077C-Qf; Mon, 17 Feb 2020 07:53:53 +0000
Received: from sleer.kot-begemot.co.uk ([192.168.3.72])
 by jain.kot-begemot.co.uk with esmtps
 (TLS1.3:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1j3bDy-0000Vm-LO; Mon, 17 Feb 2020 07:53:52 +0000
Subject: Re: [PATCH] um: vector: Avoid NULL ptr deference if transport is unset
To: Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-um@lists.infradead.org
References: <20200216213624.800463-1-sjoerd.simons@collabora.co.uk>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Organization: Cambridge Greys
Message-ID: <74c04f11-4b67-d1a7-7d05-197a229b245c@cambridgegreys.com>
Date: Mon, 17 Feb 2020 07:53:50 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <20200216213624.800463-1-sjoerd.simons@collabora.co.uk>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_235402_377853_5C4040E3 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Richard Weinberger <richard@nod.at>, Jeff Dike <jdike@addtoit.com>,
 linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 16/02/2020 21:36, Sjoerd Simons wrote:
> When the transport option of a vec isn't set strncmp ends up being
> called on a NULL pointer. Better not do that.
> 
> Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> 
> ---
> 
>   arch/um/drivers/vector_kern.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> index 0ff86391f77d..ca90666c0b61 100644
> --- a/arch/um/drivers/vector_kern.c
> +++ b/arch/um/drivers/vector_kern.c
> @@ -198,6 +198,9 @@ static int get_transport_options(struct arglist *def)
>   	long parsed;
>   	int result = 0;
>   
> +	if (transport == NULL)
> +		return -EINVAL;
> +
>   	if (vector != NULL) {
>   		if (kstrtoul(vector, 10, &parsed) == 0) {
>   			if (parsed == 0) {
> 
Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>

-- 
Anton R. Ivanov
Cambridgegreys Limited. Registered in England. Company Number 10273661
https://www.cambridgegreys.com/

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
