Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C921819709A
	for <lists+linux-um@lfdr.de>; Sun, 29 Mar 2020 23:56:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KsK8xmigE5zlbz8YaS7bDTAG72gFrcSw2NDAMBB/o8U=; b=O6N/bDb4kccm/c
	GxSye/qT7M1RhKHSyhTKFGcejLST5IRifQdw79GtpfAWngTXhS6cTrpX5EiCdut9ndfucR9oMsqYH
	LLayw++QuRBzk+H1Q9JKRW1XXup5Fg75lV9nRZF5cod3fEMLxSuV0ffCXSSOgpBHqCcN/6hRya5xx
	G9KfIez6RSkzKLZeKHGvamEpjqfScDh3Psm1KA2IYCw72D1Jt1nBtdrBhfgokyEGZCsgiUcgJSKMP
	opjv6L8qdGAGIIegaBy7XOoXH6SUi81P/2IGsk1OTJ9xE26i6d2JwLPnAi7EesHfuyW2/fI9ILj4B
	BspJ2DqXJ0E84rBmx2JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIfuV-0006YJ-5l; Sun, 29 Mar 2020 21:56:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIfuS-0006Xu-55
 for linux-um@lists.infradead.org; Sun, 29 Mar 2020 21:56:01 +0000
Received: by mail-wm1-x344.google.com with SMTP id c187so17787045wme.1
 for <linux-um@lists.infradead.org>; Sun, 29 Mar 2020 14:55:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ulfC6hgy6ACkHw+iBinr76TbGOLClSVkLu9pFAuKoVk=;
 b=iqWLNyByOYdM4pCxKi6Y+Yw8cPv1WLvCSpp3c81OjmFm5ZdrBUX6u7jYDIQvci1j3v
 TXxbTQvIB7KB+VZYPD66CLdbbg7m27bNtAXVx00jWlGmnSx4MFgt4rd3dfMB3UForC/6
 FrgEw8ni2L5DlIFeNHOPKi5g/A2pRODrkZv2Ce4O8cNDkVAt1ph5z+TffaHEVIaqUD+/
 5WxGdas30Ni3v7IYugEe2KCW6YLvoMe0/GWhz+eh9DE0jBnGBgrrpRjl0kd85hDXlhKX
 ioVMNb141ADzdXw3Kjvp/C88HOsgGty0Ybyuj/rfuBAceHTl3sLIkVVEl2VIqigUVEKZ
 dP0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ulfC6hgy6ACkHw+iBinr76TbGOLClSVkLu9pFAuKoVk=;
 b=FLDVVuqAU2m9Ovmr7Y9ysuA0JrKEXk6Am9tTM4uov1o4BJbn8iNSG6nyNk1S02VDmj
 saZtt8Oqq+X3I+3qTYzvjDsQpffLqBs0C8P/ylHH1jkatKByCJFjUqgC0AqINry0eqzH
 NaFd7PZ1+4pP9+C8BWdqXyiEtmA0IJbzGLNqcawdRAbG42csJ//TZiGkVSB3RfsKy+1r
 ZxcUK+VG9B8zi7RADRLhXhgG3wcFZ6pfPjf1954GVL7+FeFiRh2XvTX0GkqAubYGMDet
 9wQB37LE6rmimvOfsC9yQjx+yVsFCdUwKBLXIdCVz5zTIpRNllI+oYUpP1eFqNAfDOba
 qsGQ==
X-Gm-Message-State: ANhLgQ03i5h7LVP5d6uYn/xueNkSDdEh8lWljcT+mXEW22CyjSTfgLm/
 GuBfI76ChjYO7nxYLx7qIFZv4gWpJ0/WOEZo0IY=
X-Google-Smtp-Source: ADFU+vt4o6OKgj4Tc2ly+vS1OftlUznob/YFlYoFGGyRBxMgJFczwL6J9QTtAs7ggIIvx+dDrQ1mnnqZQOkeEOuRlD4=
X-Received: by 2002:a1c:2e10:: with SMTP id u16mr9475250wmu.143.1585518958887; 
 Sun, 29 Mar 2020 14:55:58 -0700 (PDT)
MIME-Version: 1.0
References: <20200216213624.800463-1-sjoerd.simons@collabora.co.uk>
 <74c04f11-4b67-d1a7-7d05-197a229b245c@cambridgegreys.com>
In-Reply-To: <74c04f11-4b67-d1a7-7d05-197a229b245c@cambridgegreys.com>
From: Richard Weinberger <richard.weinberger@gmail.com>
Date: Sun, 29 Mar 2020 23:55:47 +0200
Message-ID: <CAFLxGvzuDJs7B7w6eF+dC634pVrK6BJPyfUOvXoACL7toYwoPg@mail.gmail.com>
Subject: Re: [PATCH] um: vector: Avoid NULL ptr deference if transport is unset
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_145600_222237_F5FE7370 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard.weinberger[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Richard Weinberger <richard@nod.at>,
 Sjoerd Simons <sjoerd.simons@collabora.co.uk>,
 linux-um <linux-um@lists.infradead.org>, Jeff Dike <jdike@addtoit.com>,
 LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 8:54 AM Anton Ivanov
<anton.ivanov@cambridgegreys.com> wrote:
>
> On 16/02/2020 21:36, Sjoerd Simons wrote:
> > When the transport option of a vec isn't set strncmp ends up being
> > called on a NULL pointer. Better not do that.
> >
> > Signed-off-by: Sjoerd Simons <sjoerd.simons@collabora.co.uk>
> >
> > ---
> >
> >   arch/um/drivers/vector_kern.c | 3 +++
> >   1 file changed, 3 insertions(+)
> >
> > diff --git a/arch/um/drivers/vector_kern.c b/arch/um/drivers/vector_kern.c
> > index 0ff86391f77d..ca90666c0b61 100644
> > --- a/arch/um/drivers/vector_kern.c
> > +++ b/arch/um/drivers/vector_kern.c
> > @@ -198,6 +198,9 @@ static int get_transport_options(struct arglist *def)
> >       long parsed;
> >       int result = 0;
> >
> > +     if (transport == NULL)
> > +             return -EINVAL;
> > +
> >       if (vector != NULL) {
> >               if (kstrtoul(vector, 10, &parsed) == 0) {
> >                       if (parsed == 0) {
> >
> Acked-By: Anton Ivanov <anton.ivanov@cambridgegreys.com>

Applied, thanks!

-- 
Thanks,
//richard

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
