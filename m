Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78F7C72AB0
	for <lists+linux-um@lfdr.de>; Wed, 24 Jul 2019 10:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hrwvyDFoBiM+uohtOFS02oqVFgC+ZuV30/zEgrkv6fc=; b=kJtY1q12QWRkqs
	NnGcwkjSH7WUL6n4VZO7aN7mWzjFbr/p9FOXN8gDPSI5OnuD9tA0Ql7X9+PvCXVqS2UoPnwhYTZQ8
	xedM/iTGjACBhXtpsnYbwDhwRKQVVa+U/b7ijM17yhgewXcIDZFSyR/q0nomiNGC5Y/hx0DP91eJ/
	cbulPHhbB5RB1eQ+6bz6pH2Dqj7aZnw/fpf7gE1yFVG6Eq/G7xRJorqka81BUldtIcGJWjCAFUwWv
	bNuNM1tps1IjxAPBcWvfQT5ApxSLMFr3jl8ak8fbzoyQZn0N5tpkohtPbCtIcL32Cc7Tk07yHeOTl
	DiKHufTGQY8AN+Drc5Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqD1p-0002TH-BX; Wed, 24 Jul 2019 08:53:41 +0000
Received: from mail-wr1-f67.google.com ([209.85.221.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqCzt-000186-AU
 for linux-um@lists.infradead.org; Wed, 24 Jul 2019 08:51:47 +0000
Received: by mail-wr1-f67.google.com with SMTP id n4so46097627wrs.3
 for <linux-um@lists.infradead.org>; Wed, 24 Jul 2019 01:51:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=mWnc/Oi3kwxpi036BVBtRkk0tHDQqWLsATjr5M5uMV0=;
 b=tB/UZLcc+m7r9W0zDS1vFy4cpsJte2cRIfEDFFjkwHYz1I8R7ImWzlEVaCrBThs6Ol
 SIMMOpOMyyPtkUd9SEDr6oLr5wK04C9mHHLXxuPVAEbDmCbpNsSu/SSwgj9T3qlY4CPt
 SsJWSszPRHAuR3pDTIm1wgH6pCG5aZsUbR3uLXdbF4Fbu/Y9Z6RbAgS4LdmYWQlF7tKA
 kcs4tlB6JWEjrg/y8zyeTlaCuFSgFMMObjTzEceFlPSlTlRb6VGgAsQCqz7QlTh7UoAW
 uPtx1eJ+cnxo8tvUELTniDLg6OGb6jqjLoYd69nkqQRfdSewyI2PK+9hjZ0ByxjP1MZg
 Lj3g==
X-Gm-Message-State: APjAAAUNz+eBJkwkM/e73Z9CzCgwjlV5lxSR5gjIP0Rp76acVQeybvfX
 X9mFjXxL9EISDPgMpoa9f3rKVg==
X-Google-Smtp-Source: APXvYqyijLyRQblp3CQTaV7zQdpPSeL4C9811JOCBhAdShKIPtICc/anf4d05/eq/Y1K4q6tF/uVow==
X-Received: by 2002:adf:fe09:: with SMTP id n9mr90883675wrr.41.1563958298665; 
 Wed, 24 Jul 2019 01:51:38 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:10f7:67c8:abb4:8512?
 ([2001:b07:6468:f312:10f7:67c8:abb4:8512])
 by smtp.gmail.com with ESMTPSA id z1sm46795813wrp.51.2019.07.24.01.51.37
 (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
 Wed, 24 Jul 2019 01:51:38 -0700 (PDT)
Subject: Re: [PATCH] Documentation: move Documentation/virtual to
 Documentation/virt
To: Christoph Hellwig <hch@lst.de>, corbet@lwn.net
References: <20190724072449.19599-1-hch@lst.de>
From: Paolo Bonzini <pbonzini@redhat.com>
Openpgp: preference=signencrypt
Message-ID: <b9baabbb-9e9b-47cf-f5a8-ea42ba1ddc25@redhat.com>
Date: Wed, 24 Jul 2019 10:51:36 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724072449.19599-1-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_015141_626043_597F757D 
X-CRM114-Status: GOOD (  22.08  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-kernel@vger.kernel.org, anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 24/07/19 09:24, Christoph Hellwig wrote:
> Renaming docs seems to be en vogue at the moment, so fix on of the
> grossly misnamed directories.  We usually never use "virtual" as
> a shortcut for virtualization in the kernel, but always virt,
> as seen in the virt/ top-level directory.  Fix up the documentation
> to match that.
> 
> Fixes: ed16648eb5b8 ("Move kvm, uml, and lguest subdirectories under a common "virtual" directory, I.E:")
> Signed-off-by: Christoph Hellwig <hch@lst.de>

Queued, thanks.  I can't count how many times I said "I really should
rename that directory".

Paolo

> ---
>  Documentation/admin-guide/kernel-parameters.txt             | 2 +-
>  Documentation/{virtual => virt}/index.rst                   | 0
>  .../{virtual => virt}/kvm/amd-memory-encryption.rst         | 0
>  Documentation/{virtual => virt}/kvm/api.txt                 | 2 +-
>  Documentation/{virtual => virt}/kvm/arm/hyp-abi.txt         | 0
>  Documentation/{virtual => virt}/kvm/arm/psci.txt            | 0
>  Documentation/{virtual => virt}/kvm/cpuid.rst               | 0
>  Documentation/{virtual => virt}/kvm/devices/README          | 0
>  .../{virtual => virt}/kvm/devices/arm-vgic-its.txt          | 0
>  Documentation/{virtual => virt}/kvm/devices/arm-vgic-v3.txt | 0
>  Documentation/{virtual => virt}/kvm/devices/arm-vgic.txt    | 0
>  Documentation/{virtual => virt}/kvm/devices/mpic.txt        | 0
>  Documentation/{virtual => virt}/kvm/devices/s390_flic.txt   | 0
>  Documentation/{virtual => virt}/kvm/devices/vcpu.txt        | 0
>  Documentation/{virtual => virt}/kvm/devices/vfio.txt        | 0
>  Documentation/{virtual => virt}/kvm/devices/vm.txt          | 0
>  Documentation/{virtual => virt}/kvm/devices/xics.txt        | 0
>  Documentation/{virtual => virt}/kvm/devices/xive.txt        | 0
>  Documentation/{virtual => virt}/kvm/halt-polling.txt        | 0
>  Documentation/{virtual => virt}/kvm/hypercalls.txt          | 4 ++--
>  Documentation/{virtual => virt}/kvm/index.rst               | 0
>  Documentation/{virtual => virt}/kvm/locking.txt             | 0
>  Documentation/{virtual => virt}/kvm/mmu.txt                 | 2 +-
>  Documentation/{virtual => virt}/kvm/msr.txt                 | 0
>  Documentation/{virtual => virt}/kvm/nested-vmx.txt          | 0
>  Documentation/{virtual => virt}/kvm/ppc-pv.txt              | 0
>  Documentation/{virtual => virt}/kvm/review-checklist.txt    | 2 +-
>  Documentation/{virtual => virt}/kvm/s390-diag.txt           | 0
>  Documentation/{virtual => virt}/kvm/timekeeping.txt         | 0
>  Documentation/{virtual => virt}/kvm/vcpu-requests.rst       | 0
>  Documentation/{virtual => virt}/paravirt_ops.rst            | 0
>  Documentation/{virtual => virt}/uml/UserModeLinux-HOWTO.txt | 0
>  MAINTAINERS                                                 | 6 +++---
>  arch/powerpc/include/uapi/asm/kvm_para.h                    | 2 +-
>  arch/x86/kvm/mmu.c                                          | 2 +-
>  include/uapi/linux/kvm.h                                    | 4 ++--
>  tools/include/uapi/linux/kvm.h                              | 4 ++--
>  virt/kvm/arm/arm.c                                          | 2 +-
>  virt/kvm/arm/vgic/vgic-mmio-v3.c                            | 2 +-
>  virt/kvm/arm/vgic/vgic.h                                    | 4 ++--
>  40 files changed, 19 insertions(+), 19 deletions(-)
>  rename Documentation/{virtual => virt}/index.rst (100%)
>  rename Documentation/{virtual => virt}/kvm/amd-memory-encryption.rst (100%)
>  rename Documentation/{virtual => virt}/kvm/api.txt (99%)
>  rename Documentation/{virtual => virt}/kvm/arm/hyp-abi.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/arm/psci.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/cpuid.rst (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/README (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/arm-vgic-its.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/arm-vgic-v3.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/arm-vgic.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/mpic.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/s390_flic.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/vcpu.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/vfio.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/vm.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/xics.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/devices/xive.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/halt-polling.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/hypercalls.txt (97%)
>  rename Documentation/{virtual => virt}/kvm/index.rst (100%)
>  rename Documentation/{virtual => virt}/kvm/locking.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/mmu.txt (99%)
>  rename Documentation/{virtual => virt}/kvm/msr.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/nested-vmx.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/ppc-pv.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/review-checklist.txt (95%)
>  rename Documentation/{virtual => virt}/kvm/s390-diag.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/timekeeping.txt (100%)
>  rename Documentation/{virtual => virt}/kvm/vcpu-requests.rst (100%)
>  rename Documentation/{virtual => virt}/paravirt_ops.rst (100%)
>  rename Documentation/{virtual => virt}/uml/UserModeLinux-HOWTO.txt (100%)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index 46b826fcb5ad..7ccd158b3894 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -2545,7 +2545,7 @@
>  			mem_encrypt=on:		Activate SME
>  			mem_encrypt=off:	Do not activate SME
>  
> -			Refer to Documentation/virtual/kvm/amd-memory-encryption.rst
> +			Refer to Documentation/virt/kvm/amd-memory-encryption.rst
>  			for details on when memory encryption can be activated.
>  
>  	mem_sleep_default=	[SUSPEND] Default system suspend mode:
> diff --git a/Documentation/virtual/index.rst b/Documentation/virt/index.rst
> similarity index 100%
> rename from Documentation/virtual/index.rst
> rename to Documentation/virt/index.rst
> diff --git a/Documentation/virtual/kvm/amd-memory-encryption.rst b/Documentation/virt/kvm/amd-memory-encryption.rst
> similarity index 100%
> rename from Documentation/virtual/kvm/amd-memory-encryption.rst
> rename to Documentation/virt/kvm/amd-memory-encryption.rst
> diff --git a/Documentation/virtual/kvm/api.txt b/Documentation/virt/kvm/api.txt
> similarity index 99%
> rename from Documentation/virtual/kvm/api.txt
> rename to Documentation/virt/kvm/api.txt
> index e54a3f51ddc5..2d067767b617 100644
> --- a/Documentation/virtual/kvm/api.txt
> +++ b/Documentation/virt/kvm/api.txt
> @@ -3781,7 +3781,7 @@ encrypted VMs.
>  
>  Currently, this ioctl is used for issuing Secure Encrypted Virtualization
>  (SEV) commands on AMD Processors. The SEV commands are defined in
> -Documentation/virtual/kvm/amd-memory-encryption.rst.
> +Documentation/virt/kvm/amd-memory-encryption.rst.
>  
>  4.111 KVM_MEMORY_ENCRYPT_REG_REGION
>  
> diff --git a/Documentation/virtual/kvm/arm/hyp-abi.txt b/Documentation/virt/kvm/arm/hyp-abi.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/arm/hyp-abi.txt
> rename to Documentation/virt/kvm/arm/hyp-abi.txt
> diff --git a/Documentation/virtual/kvm/arm/psci.txt b/Documentation/virt/kvm/arm/psci.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/arm/psci.txt
> rename to Documentation/virt/kvm/arm/psci.txt
> diff --git a/Documentation/virtual/kvm/cpuid.rst b/Documentation/virt/kvm/cpuid.rst
> similarity index 100%
> rename from Documentation/virtual/kvm/cpuid.rst
> rename to Documentation/virt/kvm/cpuid.rst
> diff --git a/Documentation/virtual/kvm/devices/README b/Documentation/virt/kvm/devices/README
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/README
> rename to Documentation/virt/kvm/devices/README
> diff --git a/Documentation/virtual/kvm/devices/arm-vgic-its.txt b/Documentation/virt/kvm/devices/arm-vgic-its.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/arm-vgic-its.txt
> rename to Documentation/virt/kvm/devices/arm-vgic-its.txt
> diff --git a/Documentation/virtual/kvm/devices/arm-vgic-v3.txt b/Documentation/virt/kvm/devices/arm-vgic-v3.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/arm-vgic-v3.txt
> rename to Documentation/virt/kvm/devices/arm-vgic-v3.txt
> diff --git a/Documentation/virtual/kvm/devices/arm-vgic.txt b/Documentation/virt/kvm/devices/arm-vgic.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/arm-vgic.txt
> rename to Documentation/virt/kvm/devices/arm-vgic.txt
> diff --git a/Documentation/virtual/kvm/devices/mpic.txt b/Documentation/virt/kvm/devices/mpic.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/mpic.txt
> rename to Documentation/virt/kvm/devices/mpic.txt
> diff --git a/Documentation/virtual/kvm/devices/s390_flic.txt b/Documentation/virt/kvm/devices/s390_flic.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/s390_flic.txt
> rename to Documentation/virt/kvm/devices/s390_flic.txt
> diff --git a/Documentation/virtual/kvm/devices/vcpu.txt b/Documentation/virt/kvm/devices/vcpu.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/vcpu.txt
> rename to Documentation/virt/kvm/devices/vcpu.txt
> diff --git a/Documentation/virtual/kvm/devices/vfio.txt b/Documentation/virt/kvm/devices/vfio.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/vfio.txt
> rename to Documentation/virt/kvm/devices/vfio.txt
> diff --git a/Documentation/virtual/kvm/devices/vm.txt b/Documentation/virt/kvm/devices/vm.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/vm.txt
> rename to Documentation/virt/kvm/devices/vm.txt
> diff --git a/Documentation/virtual/kvm/devices/xics.txt b/Documentation/virt/kvm/devices/xics.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/xics.txt
> rename to Documentation/virt/kvm/devices/xics.txt
> diff --git a/Documentation/virtual/kvm/devices/xive.txt b/Documentation/virt/kvm/devices/xive.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/devices/xive.txt
> rename to Documentation/virt/kvm/devices/xive.txt
> diff --git a/Documentation/virtual/kvm/halt-polling.txt b/Documentation/virt/kvm/halt-polling.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/halt-polling.txt
> rename to Documentation/virt/kvm/halt-polling.txt
> diff --git a/Documentation/virtual/kvm/hypercalls.txt b/Documentation/virt/kvm/hypercalls.txt
> similarity index 97%
> rename from Documentation/virtual/kvm/hypercalls.txt
> rename to Documentation/virt/kvm/hypercalls.txt
> index da210651f714..5f6d291bd004 100644
> --- a/Documentation/virtual/kvm/hypercalls.txt
> +++ b/Documentation/virt/kvm/hypercalls.txt
> @@ -18,7 +18,7 @@ S390:
>    number in R1.
>  
>    For further information on the S390 diagnose call as supported by KVM,
> -  refer to Documentation/virtual/kvm/s390-diag.txt.
> +  refer to Documentation/virt/kvm/s390-diag.txt.
>  
>   PowerPC:
>    It uses R3-R10 and hypercall number in R11. R4-R11 are used as output registers.
> @@ -26,7 +26,7 @@ S390:
>  
>    KVM hypercalls uses 4 byte opcode, that are patched with 'hypercall-instructions'
>    property inside the device tree's /hypervisor node.
> -  For more information refer to Documentation/virtual/kvm/ppc-pv.txt
> +  For more information refer to Documentation/virt/kvm/ppc-pv.txt
>  
>  MIPS:
>    KVM hypercalls use the HYPCALL instruction with code 0 and the hypercall
> diff --git a/Documentation/virtual/kvm/index.rst b/Documentation/virt/kvm/index.rst
> similarity index 100%
> rename from Documentation/virtual/kvm/index.rst
> rename to Documentation/virt/kvm/index.rst
> diff --git a/Documentation/virtual/kvm/locking.txt b/Documentation/virt/kvm/locking.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/locking.txt
> rename to Documentation/virt/kvm/locking.txt
> diff --git a/Documentation/virtual/kvm/mmu.txt b/Documentation/virt/kvm/mmu.txt
> similarity index 99%
> rename from Documentation/virtual/kvm/mmu.txt
> rename to Documentation/virt/kvm/mmu.txt
> index 2efe0efc516e..1b9880dfba0a 100644
> --- a/Documentation/virtual/kvm/mmu.txt
> +++ b/Documentation/virt/kvm/mmu.txt
> @@ -298,7 +298,7 @@ Handling a page fault is performed as follows:
>       vcpu->arch.mmio_gfn, and call the emulator
>   - If both P bit and R/W bit of error code are set, this could possibly
>     be handled as a "fast page fault" (fixed without taking the MMU lock).  See
> -   the description in Documentation/virtual/kvm/locking.txt.
> +   the description in Documentation/virt/kvm/locking.txt.
>   - if needed, walk the guest page tables to determine the guest translation
>     (gva->gpa or ngpa->gpa)
>     - if permissions are insufficient, reflect the fault back to the guest
> diff --git a/Documentation/virtual/kvm/msr.txt b/Documentation/virt/kvm/msr.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/msr.txt
> rename to Documentation/virt/kvm/msr.txt
> diff --git a/Documentation/virtual/kvm/nested-vmx.txt b/Documentation/virt/kvm/nested-vmx.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/nested-vmx.txt
> rename to Documentation/virt/kvm/nested-vmx.txt
> diff --git a/Documentation/virtual/kvm/ppc-pv.txt b/Documentation/virt/kvm/ppc-pv.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/ppc-pv.txt
> rename to Documentation/virt/kvm/ppc-pv.txt
> diff --git a/Documentation/virtual/kvm/review-checklist.txt b/Documentation/virt/kvm/review-checklist.txt
> similarity index 95%
> rename from Documentation/virtual/kvm/review-checklist.txt
> rename to Documentation/virt/kvm/review-checklist.txt
> index a83b27635fdd..499af499e296 100644
> --- a/Documentation/virtual/kvm/review-checklist.txt
> +++ b/Documentation/virt/kvm/review-checklist.txt
> @@ -7,7 +7,7 @@ Review checklist for kvm patches
>  2.  Patches should be against kvm.git master branch.
>  
>  3.  If the patch introduces or modifies a new userspace API:
> -    - the API must be documented in Documentation/virtual/kvm/api.txt
> +    - the API must be documented in Documentation/virt/kvm/api.txt
>      - the API must be discoverable using KVM_CHECK_EXTENSION
>  
>  4.  New state must include support for save/restore.
> diff --git a/Documentation/virtual/kvm/s390-diag.txt b/Documentation/virt/kvm/s390-diag.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/s390-diag.txt
> rename to Documentation/virt/kvm/s390-diag.txt
> diff --git a/Documentation/virtual/kvm/timekeeping.txt b/Documentation/virt/kvm/timekeeping.txt
> similarity index 100%
> rename from Documentation/virtual/kvm/timekeeping.txt
> rename to Documentation/virt/kvm/timekeeping.txt
> diff --git a/Documentation/virtual/kvm/vcpu-requests.rst b/Documentation/virt/kvm/vcpu-requests.rst
> similarity index 100%
> rename from Documentation/virtual/kvm/vcpu-requests.rst
> rename to Documentation/virt/kvm/vcpu-requests.rst
> diff --git a/Documentation/virtual/paravirt_ops.rst b/Documentation/virt/paravirt_ops.rst
> similarity index 100%
> rename from Documentation/virtual/paravirt_ops.rst
> rename to Documentation/virt/paravirt_ops.rst
> diff --git a/Documentation/virtual/uml/UserModeLinux-HOWTO.txt b/Documentation/virt/uml/UserModeLinux-HOWTO.txt
> similarity index 100%
> rename from Documentation/virtual/uml/UserModeLinux-HOWTO.txt
> rename to Documentation/virt/uml/UserModeLinux-HOWTO.txt
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 783569e3c4b4..5e1f9ee8f86f 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -8808,7 +8808,7 @@ L:	kvm@vger.kernel.org
>  W:	http://www.linux-kvm.org
>  T:	git git://git.kernel.org/pub/scm/virt/kvm/kvm.git
>  S:	Supported
> -F:	Documentation/virtual/kvm/
> +F:	Documentation/virt/kvm/
>  F:	include/trace/events/kvm.h
>  F:	include/uapi/asm-generic/kvm*
>  F:	include/uapi/linux/kvm*
> @@ -12137,7 +12137,7 @@ M:	Thomas Hellstrom <thellstrom@vmware.com>
>  M:	"VMware, Inc." <pv-drivers@vmware.com>
>  L:	virtualization@lists.linux-foundation.org
>  S:	Supported
> -F:	Documentation/virtual/paravirt_ops.txt
> +F:	Documentation/virt/paravirt_ops.txt
>  F:	arch/*/kernel/paravirt*
>  F:	arch/*/include/asm/paravirt*.h
>  F:	include/linux/hypervisor.h
> @@ -16854,7 +16854,7 @@ W:	http://user-mode-linux.sourceforge.net
>  Q:	https://patchwork.ozlabs.org/project/linux-um/list/
>  T:	git git://git.kernel.org/pub/scm/linux/kernel/git/rw/uml.git
>  S:	Maintained
> -F:	Documentation/virtual/uml/
> +F:	Documentation/virt/uml/
>  F:	arch/um/
>  F:	arch/x86/um/
>  F:	fs/hostfs/
> diff --git a/arch/powerpc/include/uapi/asm/kvm_para.h b/arch/powerpc/include/uapi/asm/kvm_para.h
> index 01555c6ae0f5..be48c2215fa2 100644
> --- a/arch/powerpc/include/uapi/asm/kvm_para.h
> +++ b/arch/powerpc/include/uapi/asm/kvm_para.h
> @@ -31,7 +31,7 @@
>   * Struct fields are always 32 or 64 bit aligned, depending on them being 32
>   * or 64 bit wide respectively.
>   *
> - * See Documentation/virtual/kvm/ppc-pv.txt
> + * See Documentation/virt/kvm/ppc-pv.txt
>   */
>  struct kvm_vcpu_arch_shared {
>  	__u64 scratch1;
> diff --git a/arch/x86/kvm/mmu.c b/arch/x86/kvm/mmu.c
> index 8f72526e2f68..24843cf49579 100644
> --- a/arch/x86/kvm/mmu.c
> +++ b/arch/x86/kvm/mmu.c
> @@ -3466,7 +3466,7 @@ static bool fast_page_fault(struct kvm_vcpu *vcpu, gva_t gva, int level,
>  		/*
>  		 * Currently, fast page fault only works for direct mapping
>  		 * since the gfn is not stable for indirect shadow page. See
> -		 * Documentation/virtual/kvm/locking.txt to get more detail.
> +		 * Documentation/virt/kvm/locking.txt to get more detail.
>  		 */
>  		fault_handled = fast_pf_fix_direct_spte(vcpu, sp,
>  							iterator.sptep, spte,
> diff --git a/include/uapi/linux/kvm.h b/include/uapi/linux/kvm.h
> index a7c19540ce21..5e3f12d5359e 100644
> --- a/include/uapi/linux/kvm.h
> +++ b/include/uapi/linux/kvm.h
> @@ -116,7 +116,7 @@ struct kvm_irq_level {
>  	 * ACPI gsi notion of irq.
>  	 * For IA-64 (APIC model) IOAPIC0: irq 0-23; IOAPIC1: irq 24-47..
>  	 * For X86 (standard AT mode) PIC0/1: irq 0-15. IOAPIC0: 0-23..
> -	 * For ARM: See Documentation/virtual/kvm/api.txt
> +	 * For ARM: See Documentation/virt/kvm/api.txt
>  	 */
>  	union {
>  		__u32 irq;
> @@ -1086,7 +1086,7 @@ struct kvm_xen_hvm_config {
>   *
>   * KVM_IRQFD_FLAG_RESAMPLE indicates resamplefd is valid and specifies
>   * the irqfd to operate in resampling mode for level triggered interrupt
> - * emulation.  See Documentation/virtual/kvm/api.txt.
> + * emulation.  See Documentation/virt/kvm/api.txt.
>   */
>  #define KVM_IRQFD_FLAG_RESAMPLE (1 << 1)
>  
> diff --git a/tools/include/uapi/linux/kvm.h b/tools/include/uapi/linux/kvm.h
> index c2152f3dd02d..e7c67be7c15f 100644
> --- a/tools/include/uapi/linux/kvm.h
> +++ b/tools/include/uapi/linux/kvm.h
> @@ -116,7 +116,7 @@ struct kvm_irq_level {
>  	 * ACPI gsi notion of irq.
>  	 * For IA-64 (APIC model) IOAPIC0: irq 0-23; IOAPIC1: irq 24-47..
>  	 * For X86 (standard AT mode) PIC0/1: irq 0-15. IOAPIC0: 0-23..
> -	 * For ARM: See Documentation/virtual/kvm/api.txt
> +	 * For ARM: See Documentation/virt/kvm/api.txt
>  	 */
>  	union {
>  		__u32 irq;
> @@ -1085,7 +1085,7 @@ struct kvm_xen_hvm_config {
>   *
>   * KVM_IRQFD_FLAG_RESAMPLE indicates resamplefd is valid and specifies
>   * the irqfd to operate in resampling mode for level triggered interrupt
> - * emulation.  See Documentation/virtual/kvm/api.txt.
> + * emulation.  See Documentation/virt/kvm/api.txt.
>   */
>  #define KVM_IRQFD_FLAG_RESAMPLE (1 << 1)
>  
> diff --git a/virt/kvm/arm/arm.c b/virt/kvm/arm/arm.c
> index f645c0fbf7ec..acc43242a310 100644
> --- a/virt/kvm/arm/arm.c
> +++ b/virt/kvm/arm/arm.c
> @@ -727,7 +727,7 @@ int kvm_arch_vcpu_ioctl_run(struct kvm_vcpu *vcpu, struct kvm_run *run)
>  		 * Ensure we set mode to IN_GUEST_MODE after we disable
>  		 * interrupts and before the final VCPU requests check.
>  		 * See the comment in kvm_vcpu_exiting_guest_mode() and
> -		 * Documentation/virtual/kvm/vcpu-requests.rst
> +		 * Documentation/virt/kvm/vcpu-requests.rst
>  		 */
>  		smp_store_mb(vcpu->mode, IN_GUEST_MODE);
>  
> diff --git a/virt/kvm/arm/vgic/vgic-mmio-v3.c b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> index 936962abc38d..c45e2d7e942f 100644
> --- a/virt/kvm/arm/vgic/vgic-mmio-v3.c
> +++ b/virt/kvm/arm/vgic/vgic-mmio-v3.c
> @@ -250,7 +250,7 @@ static unsigned long vgic_v3_uaccess_read_pending(struct kvm_vcpu *vcpu,
>  	 * pending state of interrupt is latched in pending_latch variable.
>  	 * Userspace will save and restore pending state and line_level
>  	 * separately.
> -	 * Refer to Documentation/virtual/kvm/devices/arm-vgic-v3.txt
> +	 * Refer to Documentation/virt/kvm/devices/arm-vgic-v3.txt
>  	 * for handling of ISPENDR and ICPENDR.
>  	 */
>  	for (i = 0; i < len * 8; i++) {
> diff --git a/virt/kvm/arm/vgic/vgic.h b/virt/kvm/arm/vgic/vgic.h
> index 57205beaa981..3b7525deec80 100644
> --- a/virt/kvm/arm/vgic/vgic.h
> +++ b/virt/kvm/arm/vgic/vgic.h
> @@ -42,7 +42,7 @@
>  			    VGIC_AFFINITY_LEVEL(val, 3))
>  
>  /*
> - * As per Documentation/virtual/kvm/devices/arm-vgic-v3.txt,
> + * As per Documentation/virt/kvm/devices/arm-vgic-v3.txt,
>   * below macros are defined for CPUREG encoding.
>   */
>  #define KVM_REG_ARM_VGIC_SYSREG_OP0_MASK   0x000000000000c000
> @@ -63,7 +63,7 @@
>  				      KVM_REG_ARM_VGIC_SYSREG_OP2_MASK)
>  
>  /*
> - * As per Documentation/virtual/kvm/devices/arm-vgic-its.txt,
> + * As per Documentation/virt/kvm/devices/arm-vgic-its.txt,
>   * below macros are defined for ITS table entry encoding.
>   */
>  #define KVM_ITS_CTE_VALID_SHIFT		63
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
