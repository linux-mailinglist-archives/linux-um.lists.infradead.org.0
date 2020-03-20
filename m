Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DC118D42F
	for <lists+linux-um@lfdr.de>; Fri, 20 Mar 2020 17:20:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q+1QxEv2EJWegZYsUBbvsKIgFx2v5sdecmy2BNXarNc=; b=ZKYalHzzpMfjwVN6ALuATyQWQ
	MRS+ZHntkzCS/Ks6XZMbwqJA00+ZDAaxsMEvKV1d3TwFZkGLqq0J2S17ugpXKQghyamTisXA8TRUh
	Pz3T4+PCPa/1nQYn3lLajgfw48xuzlHMON6sxs7nQd8/USHNUFV2+UQKWjpPFXGuyEG3Afh9LEYLn
	ixz0f0gtjscHBXZvoiwpbhnl/UjL+USnft/YU6N35p6SgRujOgJHjTeYnWUn9HkbobdqwYuWaXFyh
	Hoo813DlYjUvxOP7jP5j+dxkLT5DsaLQqW9iufDnD6oQWMAEIPbAH3wWM8h05Tj5axX7i8zeX8GdB
	QJ1QhPp2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFKO6-0006yZ-Tj; Fri, 20 Mar 2020 16:20:46 +0000
Received: from ivanoab7.miniserver.com ([37.128.132.42]
 helo=www.kot-begemot.co.uk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFKO4-0006qU-DD
 for linux-um@lists.infradead.org; Fri, 20 Mar 2020 16:20:46 +0000
Received: from tun252.jain.kot-begemot.co.uk ([192.168.18.6]
 helo=jain.kot-begemot.co.uk)
 by www.kot-begemot.co.uk with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jFK1T-0005Zf-3d; Fri, 20 Mar 2020 15:57:23 +0000
Received: from jain.kot-begemot.co.uk ([192.168.3.3])
 by jain.kot-begemot.co.uk with esmtp (Exim 4.92)
 (envelope-from <anton.ivanov@cambridgegreys.com>)
 id 1jFK1Q-0003GD-J5; Fri, 20 Mar 2020 15:57:22 +0000
Subject: Re: [PATCH] arch/um: falloc.h needs to be directly included for older
 libc
To: Alan Maguire <alan.maguire@oracle.com>, jdike@addtoit.com,
 richard@nod.at, alex.dewar@gmx.co.uk, erelx.geron@intel.com,
 johannes.berg@intel.com, arnd@arndb.de, linux-um@lists.infradead.org
References: <1584466534-13248-1-git-send-email-alan.maguire@oracle.com>
From: Anton Ivanov <anton.ivanov@cambridgegreys.com>
Message-ID: <2295c218-74a6-d785-f4b1-2046ee91503a@cambridgegreys.com>
Date: Fri, 20 Mar 2020 15:57:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1584466534-13248-1-git-send-email-alan.maguire@oracle.com>
Content-Language: en-US
X-Spam-Score: -1.0
X-Spam-Score: -1.0
X-Clacks-Overhead: GNU Terry Pratchett
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_092044_445235_1C398B14 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.3 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: brendanhiggins@google.com, linux-kernel@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org



On 17/03/2020 17:35, Alan Maguire wrote:
> When building UML with glibc 2.17 installed, compilation
> of arch/um/os-Linux/file.c fails due to failure to find
> FALLOC_FL_PUNCH_HOLE and FALLOC_FL_KEEP_SIZE definitions.
> 
> It appears that /usr/include/bits/fcntl-linux.h (indirectly
> included by /usr/include/fcntl.h) does not include falloc.h
> with an older glibc, whereas a more up-to-date version
> does.
> 
> Adding the direct include to file.c resolves the issue
> and does not cause problems for more recent glibc.
> 
> Fixes: 50109b5a03b4 ("um: Add support for DISCARD in the UBD Driver")
> Cc: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Alan Maguire <alan.maguire@oracle.com>
> ---
>   arch/um/os-Linux/file.c | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/um/os-Linux/file.c b/arch/um/os-Linux/file.c
> index fbda105..5c819f8 100644
> --- a/arch/um/os-Linux/file.c
> +++ b/arch/um/os-Linux/file.c
> @@ -8,6 +8,7 @@
>   #include <errno.h>
>   #include <fcntl.h>
>   #include <signal.h>
> +#include <linux/falloc.h>
>   #include <sys/ioctl.h>
>   #include <sys/mount.h>
>   #include <sys/socket.h>
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
