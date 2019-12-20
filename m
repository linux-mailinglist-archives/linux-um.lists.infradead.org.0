Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF86E127639
	for <lists+linux-um@lfdr.de>; Fri, 20 Dec 2019 08:07:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1lJprxLq2QRzEw5o/MJfrBM6jaLk8W0OWC2MgTzBU0A=; b=EYaaEycZuZBlRf
	Waqltgw19CCREbNEn7426v2122rWbOxa36usevggiAr8LJtOLQEDDJ3fbC+gTQ9YFcd4dfQDYYZl6
	gIEGSE59dVG3/Ev3zXWllkMbOP2hLUJNT6iPgAxcEa7SQIPlAFiE0rIVAm4r1VsMbBNhcgvYJTYkp
	RuCtVCAXYt1arhy/kfkjZVy4ZVh2iQvs9NmJoJNPGzTnlNFzb5YQRcq2B8Aqwzm7xOCvoxMqwyKt5
	ldZ7z8dWbU5OzZBFoothLePghyZLCEl8iVazJ2isI558T3Tpk/fNf3PYxynyLeWDIx+lY/rfIBs+O
	fCaccwD9fXdGTNZe8rBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiCNx-0006Vb-1g; Fri, 20 Dec 2019 07:07:41 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=deadmen.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiCNu-0006V8-6u
 for linux-um@lists.infradead.org; Fri, 20 Dec 2019 07:07:39 +0000
Received: from gondobar.mordor.me.apana.org.au ([192.168.128.4] helo=gondobar)
 by deadmen.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1iiCNi-0008Up-B3; Fri, 20 Dec 2019 15:07:26 +0800
Received: from herbert by gondobar with local (Exim 4.89)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1iiCNe-0007qt-En; Fri, 20 Dec 2019 15:07:22 +0800
Date: Fri, 20 Dec 2019 15:07:22 +0800
From: Herbert Xu <herbert@gondor.apana.org.au>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v1 4/7] crypto: inside-secure: add unspecified HAS_IOMEM
 dependency
Message-ID: <20191220070722.p7iciqehyr3j5uqs@gondor.apana.org.au>
References: <20191211192742.95699-1-brendanhiggins@google.com>
 <20191211192742.95699-5-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211192742.95699-5-brendanhiggins@google.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_230738_397255_579E54EA 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Antoine Tenart <antoine.tenart@bootlin.com>, richard@nod.at,
 jdike@addtoit.com, linux-um@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, davidgow@google.com,
 "David S. Miller" <davem@davemloft.net>, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:27:39AM -0800, Brendan Higgins wrote:
> Currently CONFIG_CRYPTO_DEV_SAFEXCEL=y implicitly depends on
> CONFIG_HAS_IOMEM=y; consequently, on architectures without IOMEM we get
> the following build error:
> 
> ld: drivers/crypto/inside-secure/safexcel.o: in function `safexcel_probe':
> drivers/crypto/inside-secure/safexcel.c:1692: undefined reference to `devm_platform_ioremap_resource'
> 
> Fix the build error by adding the unspecified dependency.
> 
> Reported-by: Brendan Higgins <brendanhiggins@google.com>
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> ---
>  drivers/crypto/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Patch applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
