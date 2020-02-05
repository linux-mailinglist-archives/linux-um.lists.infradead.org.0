Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C5F0152407
	for <lists+linux-um@lfdr.de>; Wed,  5 Feb 2020 01:19:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwieTLVUdSydRraCUeSMULks7X9XpyGkR0BkzpS8N3c=; b=Dgsc/BwrDRuIPw
	ZHTdL7ibyjvm5FGdXs/688IEeRlZoH+4cdan1QCSY/RCgZEybZT1AEsKJl0K823eJGiP2l4KiiEUU
	n3BJV7WvuyGFCRn/XZPbc8LjzfZmFexWtCAZ6o41/R2EqBMdCaQoFdnoF2fkfCqTjH14aacKrSem0
	LwVTl6h/2ar8R4UZRVX3Pz0wRaEFNoESSJy1SzJV7st/5LhQT/pbGs9yfZVvtQCmBZEhKwGk4GMe6
	lCTKp7xK1gtlcdMVgfed2cMrfkkHW6td2jww5P7D/bpIZbieD3aFZp26bnsrU1YzVO3tZvShiCL8S
	K0dE1mBtMD86rw8tVZ1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz8PP-0003VP-Rj; Wed, 05 Feb 2020 00:19:11 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz8PN-0003Uv-87
 for linux-um@lists.infradead.org; Wed, 05 Feb 2020 00:19:10 +0000
Received: by mail-yw1-xc44.google.com with SMTP id i126so749211ywe.7
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 16:19:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NIMxNLCcbWdI9pD04SjD3Y49RygU2eutIYBAiu1d0NQ=;
 b=kNH/YUzawP+43dSMN7Q/MuLlyAhji6r3ufngpALGZyf5tggPBwRgsMIA6Hu/D9bA6A
 D7x8zshF5PASFC3oztn4phdjSD+oSVQjBPfSI/nUZ7jOlcJFF1eEuuffiqDyY1n1Us26
 vkojZ56eiO52mbJGxFN9ExLX6imGA1Ez6g6vgD2fTvDyxAGk4idW9EIBICRs2JA2ulWl
 gRAHC0S770XSNTKEY8Z425DSL3K7L+4jVSMfpeYFPNz/BrpcenLW5gF1lLxb0jwJDSpr
 +AOVSPDxb1FvEqvX4xW5h8DPPY4WxkqLZ5ryZ4KsFmmFuwggdX809RS0UzmthCSvxD59
 6DAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NIMxNLCcbWdI9pD04SjD3Y49RygU2eutIYBAiu1d0NQ=;
 b=jkKh7s33GgTWMXes9wAfDVdueFkAXrqo4QimgHww176f5OgusLiVX8I4qa803ZLhYB
 c+GPPNmBJQu18TTs/Xfo9/w7T/eY6+zvv2IzP4oOtBW2GgC71K5uRI4JGZr370tGXqeV
 0HTRJH4PzL9NujqCAVfBNiVP5R3kpag58y8teEWUR4D7CyreFdueuArZZ3Twj75xWxip
 71RYStumnvJLZYa7CsOSuNMVut4F3XH9hC0uXNA1uEraa2OcuDLNjjpl4gyYwu06YgMl
 m/ETKeJgmyIBCb84a+j14DPeQtrzBDJT4y1LytCkmXjiGV7wm/L/o93JX3FZphP4rNt4
 NRew==
X-Gm-Message-State: APjAAAVoKAtJdrOPz8s2vqiGLGUu+J6ZRw6A3iuhJeRzdPSiCeVO7fUw
 46upyfAQ9QML254ecuKasMs=
X-Google-Smtp-Source: APXvYqwOMJ/fJzT9iHJ8EtyebqNOkpzqMGzGkLU+0qEGaS2WXqxmiJAiJRH2Fim/xt/KGKTmLPBAHA==
X-Received: by 2002:a81:a903:: with SMTP id g3mr7778923ywh.427.1580861948493; 
 Tue, 04 Feb 2020 16:19:08 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id y129sm10877046ywd.40.2020.02.04.16.19.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 16:19:08 -0800 (PST)
Subject: Re: [PATCH v2 7/7] Documentation: Add kunit_shutdown to
 kernel-parameters.txt
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-8-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <d187686e-a175-e30b-2af9-6e00822fed5c@gmail.com>
Date: Tue, 4 Feb 2020 18:19:07 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130230812.142642-8-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_161909_312470_9858A6F3 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [frowand.list[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, linux-doc@vger.kernel.org, sboyd@kernel.org,
 gregkh@linuxfoundation.org, knut.omang@oracle.com,
 linux-kernel@vger.kernel.org, linux-um@lists.infradead.org, mcgrof@kernel.org,
 linux-kselftest@vger.kernel.org, logang@deltatee.com,
 kunit-dev@googlegroups.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On 1/30/20 5:08 PM, Brendan Higgins wrote:
> Add kunit_shutdown, an option to specify that the kernel shutsdown after
> running KUnit tests, to the kernel-parameters.txt documentation.
> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  Documentation/admin-guide/kernel-parameters.txt | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> index ade4e6ec23e03..522fd8bdec949 100644
> --- a/Documentation/admin-guide/kernel-parameters.txt
> +++ b/Documentation/admin-guide/kernel-parameters.txt
> @@ -2054,6 +2054,13 @@
>  			0: force disabled
>  			1: force enabled
>  
> +	kunit_shutdown	[KERNEL UNIT TESTING FRAMEWORK] Shutdown kernel after
> +			running tests.

                        running built-in tests.  Tests configured as modules will not be run.

My wording might not be consistent with KUnit terminology regarding "built-in" and "modules".
Feel free to properly word smith.


> +			Default:	(flag not present) don't shutdown
> +			poweroff:	poweroff the kernel after running tests
> +			halt:		halt the kernel after running tests
> +			reboot:		reboot the kernel after running tests
> +
>  	kvm.ignore_msrs=[KVM] Ignore guest accesses to unhandled MSRs.
>  			Default is 0 (don't ignore, but inject #GP)
>  
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
