Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF05E7793
	for <lists+linux-um@lfdr.de>; Mon, 28 Oct 2019 18:28:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D9nmIIEPQuSDDTn6mqop6I5zkrzkPz1WuDGQ5z3KHZU=; b=Y9epsmVZILq4Lt
	SVRixNnC7mdRyh+NcvD7WINPr/Bau8cd9PCnbTK9lGU0jZr/wt2hxe5yKQzhVADIMrrb9kv0UHTYj
	O0WRlPpSfbUUdtpjQ+CkJj1vdDufm1kFmjyx9sEQJv28SsPa6GfYtXTcTeQKuy4u1TnulsMZdCydW
	0B+IFn2QDdg5QCfO8lplIenUpCbd7OelEktieKZ+RifgIFdfI4uqLwXBlOejj+sPUgGvznRrbZ4PV
	luy07m/b4hDBjdmEmkn4Ogo1R7k1rnEw+JWnF/R7bdvlxcJrEhml0UWKwGrv39OPP9JPlvYJ2XfN3
	RXRyaY076JxL4cH5nQJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iP8oy-0004Qb-R8; Mon, 28 Oct 2019 17:28:48 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iP8ov-0004Q0-75
 for linux-um@lists.infradead.org; Mon, 28 Oct 2019 17:28:47 +0000
Received: by mail-io1-xd43.google.com with SMTP id 1so11624172iou.4
 for <linux-um@lists.infradead.org>; Mon, 28 Oct 2019 10:28:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pqKnKqwHOADV2Gvq5ZM4SImRrm45l4PR5FCWdyyFYeQ=;
 b=B24t5glyZ0EgQQ0MtH1BbRsL2hwpNgrgIlHCz+99Cuz6UNYgpRDs0WjO5/jCLeE7VE
 y54rjFSP2ZZ8gDST7Q5FOj0+l+yJ+EGClgNHvjhZIMOvhHsquNASkphTin3fUxD1+kH6
 IRJ1sy8OI3DxAlvSeBnSvTVIaAbz5ZJ9LcKEtu9ShR3NJmKxUSYuTvtEPK6neucr1L57
 l1F91BJ0hqj3KjJ8TdBYUdtWrWDNzx2AvwuKe4LJ3cGcKOP6aQjifDcK+AX5rits2Vm3
 4WyE/rDOTQW3ixTvyrEGZt9M1en8w8DlSuvi/MUGF+cXu5pPy56uZP9e//E4CV3Ep7ia
 mB1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pqKnKqwHOADV2Gvq5ZM4SImRrm45l4PR5FCWdyyFYeQ=;
 b=dXjdrdV1MVz9+eUA42rP35EWCaXTqPcSUXwbV5ry2IxuDylsbhGL400sUGTq40YbuI
 5mq+AOw/G637RvWIcXzoKP2XNRsaXHRFWMr3Z5T9NGJ8dEXts7+P6H0b3snKFA10Ewgu
 zDt/oBxImjohhyu5BMACOgUhPf+wN7gJsnWvIWURNsG5BQJ7Ht9JbAR9YcdL/aJyrfVX
 gwAC5FUMTMy1IIA7eAsLDPeEc0iPbHcl+4E2j0kU5DaQC8lzcTVD48cI4SEAwncdBKXu
 GxDAC7ST/48tYVdNWu6k40psaYywbd8nef2HlSXGIoi7FRamzFi3xG/QXdbXN+kX+ug3
 8gpg==
X-Gm-Message-State: APjAAAU1VCNVXFcjXyFERcp9mQWWnY24SItiUevaBH6eYxgX4ARhXrV/
 AZqaNDajyFPKfMrahIGrBu1Rbw==
X-Google-Smtp-Source: APXvYqyilwHXtxx4VZJDg+YRW95Z3riJwOnIGrJert8T1fsQ8x+Lw9Ksedsxm81ePEJC7N/vMDg1+g==
X-Received: by 2002:a6b:3707:: with SMTP id e7mr19502324ioa.293.1572283722291; 
 Mon, 28 Oct 2019 10:28:42 -0700 (PDT)
Received: from ?IPv6:2620:10d:c081:1131::1505? ([2620:10d:c090:180::56e4])
 by smtp.gmail.com with ESMTPSA id j16sm1169778ioe.14.2019.10.28.10.28.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 28 Oct 2019 10:28:40 -0700 (PDT)
Subject: Re: [PATCH] um: Entrust re-queue to the upper layers
To: Anton Ivanov <anton.ivanov@cambridgegreys.com>,
 linux-um@lists.infradead.org
References: <20191028170543.27591-1-anton.ivanov@cambridgegreys.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <cbf155ee-6dce-8895-dd09-95a5c0e0b16c@kernel.dk>
Date: Mon, 28 Oct 2019 11:28:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191028170543.27591-1-anton.ivanov@cambridgegreys.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_102845_319214_F02732FF 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: richard@nod.at, rrs@researchut.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 10/28/19 11:05 AM, Anton Ivanov wrote:
> Fixes crashes due to ubd requeue logic conflicting with the block-mq
> one.

First of all, great work getting this far! This is surely a bug.
Probably needs a Fixes entry, and a CC stable.

There are actually two cases that'll return an error here, and one is
global and the other is per-device. If the kmalloc() fails in
ubd_queue_one_vec(), we should be returning BLK_STS_RESOURCE. Didn't
look at the -EAGAIN part, but maybe that's a global resource as well
when it fails? If so, then both should return BLK_STS_RESOURCE. If not,
then that should return BLK_STS_DEV_RESOURCE, as your change did.

Hence if both are global, just make it:

if (ret < 0)
	res = BLK_STS_DEV_RESOURCE;

and if one is a per-device thing, then I'd make ubd_queue_one_vec()
return the BLK_STS_* type and propagate that down to the caller.

-- 
Jens Axboe


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
