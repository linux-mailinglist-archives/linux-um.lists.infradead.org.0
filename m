Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 727FE773DE
	for <lists+linux-um@lfdr.de>; Sat, 27 Jul 2019 00:10:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vJ0rHqPuW7UGa6mbZ9oEht0Tc9HA9WTi63PZXu1FTA8=; b=C/KfrF1h9wQGCC
	7LfIbfgTqPTY27bsCVfAbeuALpoZxI6NPX1t2dN+eo36HvfAw0Y+5C0EjstsoUvKYPHPuV8/srgvI
	x1c5RWXm6UNwbruE6MLmXaHDPxGsOW0VZ7FAOg36uDrRo7ij+fvrVCrQ0T/uc7rCi+aa4Ctb8IUDv
	Pdj96ZCHlk2WhkboiBm4yJz4tDWWtf8iOEqfGSmKrbuPv40p1fkwH0ZXqNjT/LXjkv3ehJr1nALCw
	0lGkZcHxfaE2Pyy0j6m6Mf91Bzn/LEwB9FHBmZZ++9E0SM1F9Zck1RiarFmfvUribMPzlJBqgEcPY
	nNvH8KGi4MiHmPylcyMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr8QB-0002Tp-Oi; Fri, 26 Jul 2019 22:10:39 +0000
Received: from mail-wr1-f66.google.com ([209.85.221.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr8Q9-0002T6-4P
 for linux-um@lists.infradead.org; Fri, 26 Jul 2019 22:10:38 +0000
Received: by mail-wr1-f66.google.com with SMTP id f9so55793338wre.12
 for <linux-um@lists.infradead.org>; Fri, 26 Jul 2019 15:10:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=3uH6wRDL6m6XJhTTMaf9vseYu7YZD/ywsLcXQB/jjqU=;
 b=c3o7O9xxrPDQ0eseRQYChsALGzd004uawd7CajVvyPZFToIIfR/3hJVMkkueqbDeJ9
 o8ZZ3Fglvi7hK9b3PVVc0duug1hdgYYdg+Tlob5JnVCqmhBoPtAxeR154XT+cW7sPaR/
 1nJ3Z+B2DvF4zNA0T2XOMv0gjmu1MrW3hYchrYjtmaGEw/Lt0XTDJHpjRlDASJU8EMu+
 eqsD1IHjFK2SeUdqc2EaPTX2WqxMWRpKicEcG31BfXJBJWDoy0Qh4v5EB/QJEjnGGGvF
 dlfWupEf2jkBu81XwRprTiSmboSaWfgdOuLb+1Gz2/+y8QmZv3jGsQMUzyqeIfj0z8yc
 itDA==
X-Gm-Message-State: APjAAAWywqrn4+jjtcOg7I4blFc/C4fwzprvw291N/5vHMjvdnqHX+Er
 M7nWU8flqBDBczyixDaGyybvmw==
X-Google-Smtp-Source: APXvYqzcff0a62xyZ1uFR2gsycPFMbRcnCLACAl1fTNDob/Jl6sm3/hEJ5mjpbBEtl+zmxqlsSDf9A==
X-Received: by 2002:a5d:568e:: with SMTP id f14mr22603718wrv.167.1564179033572; 
 Fri, 26 Jul 2019 15:10:33 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:9036:7130:d6ec:a346?
 ([2001:b07:6468:f312:9036:7130:d6ec:a346])
 by smtp.gmail.com with ESMTPSA id k9sm37976888wmi.33.2019.07.26.15.10.32
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Fri, 26 Jul 2019 15:10:33 -0700 (PDT)
Subject: Re: [PATCH] Documentation: move Documentation/virtual to
 Documentation/virt
To: Jonathan Corbet <corbet@lwn.net>
References: <20190724072449.19599-1-hch@lst.de>
 <b9baabbb-9e9b-47cf-f5a8-ea42ba1ddc25@redhat.com>
 <20190724120005.31a990af@lwn.net>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <be4ba4a7-a21b-8c56-4517-8886a754ff55@redhat.com>
Date: Sat, 27 Jul 2019 00:10:32 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724120005.31a990af@lwn.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_151037_178176_EE3CD1CE 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.66 listed in list.dnswl.org]
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
Cc: kvm@vger.kernel.org, linux-doc@vger.kernel.org, richard@nod.at,
 jdike@addtoit.com, rkrcmar@redhat.com, linux-um@lists.infradead.org,
 linux-kernel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 24/07/19 20:00, Jonathan Corbet wrote:
>  - kvm/api.txt pretty clearly belongs in the userspace-api book, rather
>    than tossed in with:
> 
>  - kvm/review-checklist.txt, which belongs in the subsystem guide, if only
>    we'd gotten around to creating it yet, or
> 
>  - kvm/mmu.txt, which is information for kernel developers, or
> 
>  - uml/UserModeLinux-HOWTO.txt, which belongs in the admin guide.
> 
> I suspect that organization is going to be one of the main issues to talk
> about in Lisbon.  Meanwhile, I hope that this rename won't preclude
> organizational work in the future.

Absolutely not, this rename was just about a badly-named directory.  I
totally agree with the above reorganization.  Does the userspace API
cover only syscall or perhaps sysfs interfaces?   There are more API
files (amd-memory-encryption.txt, cpuid.txt, halt-polling.txt msr.txt,
ppc-pv.txt, s390-diag.txt) but, with the exception of
amd-memory-encryption.txt and halt-polling.txt, they cover the
emulated-hardware interfaces that KVM provides to virtual machines.

Paolo

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
