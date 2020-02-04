Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DCA15222B
	for <lists+linux-um@lfdr.de>; Tue,  4 Feb 2020 22:59:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=20ny0pdxaNJp8jI2xCNKa47JceGIfzac417nbHI1x6Q=; b=GidhcD6zf/n0D5
	rVZw/5RMXxqdt6YFVxFtzW5YLu4o2mk30QlubpgYXGnQijLCd1q7ciUsueANSP2VtFGgBhc6BJvHl
	JIAUggxtO5gAxHz8sSkSIKSzcU8HP+y9HqLSRHFU0mdGw+gYXufJmf5h1KhSs0Y01p2/FVgyWvxxc
	M3akNF5DlL2+T5Ijt3uWq6qASDumQ6Rnfzja4D71DsFLWMqRyJQIN3+a6rEMEUmWXKbC2KIDgaUwj
	2kTvC28+uO2hB7eZQgSr9SSVxGPEdp4lF8D7A0/7JurB4t1o1UG0704IZazqw6oyVaszrGTOZKrVp
	SHRUFaPjxREbkxCTflKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iz6E3-000093-L4; Tue, 04 Feb 2020 21:59:19 +0000
Received: from mail-yw1-xc42.google.com ([2607:f8b0:4864:20::c42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iz6E0-00007z-Hp
 for linux-um@lists.infradead.org; Tue, 04 Feb 2020 21:59:17 +0000
Received: by mail-yw1-xc42.google.com with SMTP id t141so280959ywc.11
 for <linux-um@lists.infradead.org>; Tue, 04 Feb 2020 13:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=EF7q5sA089XDGika52Fy1O+7Ot7CBhBKLfoQVIAAsyg=;
 b=QF3KNMZBmanFxfNF2rJXBwK8KmbYetam92nRxQP5I3z2qW4Ut1YxQbYPpb9X8biApK
 uTTNnBpxwolHD9WCUTHEevyDUFYKWmgho+wyXcZhwRiYY9c5WluLdCt7227VR6GHqnBi
 6xKx2CqHnbihTGsMNg/bnHTVaS5VFzg/5Nu/w8/ZC++ai8JWuPn3/1Zabc4Ox/ko37YV
 k7UZHE/fCJKvEM9n5dRU2VynZljRYy248RsaYZfLlRZhmcjQ1qmjCIQm33Rnx9f00vMV
 VQgxG69toSn5OWCUod9cMu8JIauYd/BwSDN+S7wgU/NFZnZ4vCHfiZfD2y/cm3YwQ00t
 jFyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=EF7q5sA089XDGika52Fy1O+7Ot7CBhBKLfoQVIAAsyg=;
 b=Y3uYZNK3kNwoB9UvwEvL+wkzjqnZo+IgNZS5XEaEOzvgikYGuORA43gVkzWNhfw/Ne
 +rSDLvGS5f6pCI7GHsse22mmmOpfXlRWhEJe/dgZrh7Z40ZLLCKLPHqSXFUCiTOupjmu
 5xXMxjHHmPPY01mej6/HSGezQTsNIdfcNwBCCJ4QwSBrY8fSgTp1RJux1AaIQ67aHgpM
 7XhACM2ofzdjdk9eMjCKIHdLhZQQmTa8yThuZvb9lJ7gF/15+n/3ULIOdajU1j6S8e+o
 4Di7XPNjwyfl/agAb+SsLAX/cpFWAKhvQTtsBE9/Kl9ML91AnJsGf7rC7D1tIG3Id7yw
 9LJQ==
X-Gm-Message-State: APjAAAXLoBh6nyCBsImalUrckwYSkso0rpN7cPdAgK03bU1o1ciVr09U
 9eQ3GaIbjIkZ760OpO+1C5s=
X-Google-Smtp-Source: APXvYqwJ2EAsNZ9FZ2jLWATXqX9SqwVTGIuftOVn5FvI8hEdSoKXkxO/sqoUOXNjC3ah9pvXsAGSLA==
X-Received: by 2002:a81:7c07:: with SMTP id x7mr7164607ywc.291.1580853553316; 
 Tue, 04 Feb 2020 13:59:13 -0800 (PST)
Received: from [192.168.1.46] (c-73-88-245-53.hsd1.tn.comcast.net.
 [73.88.245.53])
 by smtp.gmail.com with ESMTPSA id d66sm10310686ywc.16.2020.02.04.13.59.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Feb 2020 13:59:12 -0800 (PST)
Subject: Re: [PATCH v2 2/7] arch: um: add linker section for KUnit test suites
To: Brendan Higgins <brendanhiggins@google.com>, jdike@addtoit.com,
 richard@nod.at, anton.ivanov@cambridgegreys.com, arnd@arndb.de,
 keescook@chromium.org, skhan@linuxfoundation.org, alan.maguire@oracle.com,
 yzaikin@google.com, davidgow@google.com, akpm@linux-foundation.org,
 rppt@linux.ibm.com
References: <20200130230812.142642-1-brendanhiggins@google.com>
 <20200130230812.142642-3-brendanhiggins@google.com>
From: Frank Rowand <frowand.list@gmail.com>
Message-ID: <e060bdfc-5cdb-fb62-48b0-cc54c7bc72ce@gmail.com>
Date: Tue, 4 Feb 2020 15:59:11 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200130230812.142642-3-brendanhiggins@google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_135916_612184_C6F03808 
X-CRM114-Status: GOOD (  20.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c42 listed in]
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
> Add a linker section to UML where KUnit can put references to its test
> suites. This patch is an early step in transitioning to dispatching all
> KUnit tests from a centralized executor rather than having each as its
> own separate late_initcall.

All architectures please.

The early versions of Kunit documented reliance on UML.  Discussion lead to
the conclusion that real architectures and real hardware would be supported.

This like this are what make me reluctant to move devicetree unittests to
KUnit.

Can you please add a section to the KUnit documentation that lists things
like the expectations, requirements, limitations, etc for a test case that
is run by KUnit?  Some examples that pop to mind from recent discussions
and my own experiences:

  - Each test case is invoked after late_init is complete.
      + Exception: the possible value of being able to run a unit test
        at a specific runlevel has been expressed.  If an actual unit
        test can be shown to require running earlier, this restriction
        will be re-visited.

  - Each test case must be idempotent.  Each test case may be called
    multiple times, and must generate the same result each time it
    is called.
      + Exception 1: a test case can be declared to not be idempotent
        [[ mechanism TBD ]], in which case KUnit will not call the
        test case a second time without the kernel rebooting.
      + Exception 2: hardware may not be deterministic, so a test that
        always passes or fails when run under UML may not always to
        so on real hardware.  <--- sentence copied from
        Documentation/dev-tools/kunit/usage.rst
          [[ This item and 1st exception do not exist yet, but will exist
          in some form if the proposed proc filesystem interface is
          added. ]]

  - KUnit provides a helpful wrapper to simplify building a UML kernel
    containing the KUnit test cases, booting the UML kernel, and
    formatting the output from the test cases.  This wrapper MUST NOT
    be required to run the test cases or to determine a test result.
    The formatting may provide additional analysis and improve
    readability of a test result.

  - .... There is more that belongs here, but I'm getting side tracked
    here, when I'm trying to instead convert devicetree unittests to
    KUnit and want to get back to that.


-Frank

> 
> Signed-off-by: Brendan Higgins <brendanhiggins@google.com>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---
>  arch/um/include/asm/common.lds.S | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/um/include/asm/common.lds.S b/arch/um/include/asm/common.lds.S
> index 7145ce6999822..eab9ceb450efd 100644
> --- a/arch/um/include/asm/common.lds.S
> +++ b/arch/um/include/asm/common.lds.S
> @@ -52,6 +52,10 @@
>  	CON_INITCALL
>    }
>  
> +  .kunit_test_suites : {
> +	KUNIT_TEST_SUITES
> +  }
> +
>    .exitcall : {
>  	__exitcall_begin = .;
>  	*(.exitcall.exit)
> 


_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
