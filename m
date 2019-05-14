Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C217D1C47B
	for <lists+linux-um@lfdr.de>; Tue, 14 May 2019 10:12:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F+Of6W8DH0YzD+ekrqzLU0+TXtl59hSaubgWIEBkKT8=; b=CRFiRffwUQgnuN
	OpPiGfqdJE9MwPD7wiVWsOQi3oudvN3OEgmnux9pxBzGeZ/+rIKqsvuhv6zYBMlYy8oWV4mwXIoJ0
	Y3Xamc9rK/0R2UkI4svlDlP5V5pZexfqebVNlHoVaJEQf+DsXaUzagBlF7v4YrrbORDqvG1D4f06Y
	gWxnjWP+jFfqpufQ7k+1zw5WQrhrNxIxA8CWV32P3/0He7E/TBx5VSif4SKVeRqWettcbyQcOGYxT
	pxkawBI24P70vGPvMU3c9DEnD1bOqPGloGPrzkgiyG6crjRPAC7X8VdLl0PIbg5eOiWAVjquq8EqN
	e0Vit/x9h4bKxQcyFWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQSY8-0007vU-B1; Tue, 14 May 2019 08:12:36 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQSY3-0007ne-1e
 for linux-um@lists.infradead.org; Tue, 14 May 2019 08:12:33 +0000
Received: by mail-pl1-x643.google.com with SMTP id f12so5844281plt.8
 for <linux-um@lists.infradead.org>; Tue, 14 May 2019 01:12:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=NVJCQ/meS0Lsexv3IBx7F9d7yUIfFyO6avMbOIjFh4s=;
 b=Qf/S0L0GOg+nfU17642TqGkQqhXSonrx9ER/aBydfh/biW25VannRP2+rJFupFnjNQ
 6O3jNdfrZjij+GeMIqitmfstQ1mnbWWM05ksAzIPhV2I5nUim0wwLfODJnqnUNud35CU
 dbKTV24y+A9OvRbYlzMzJKLZHVKLHAMmsK1K7rVw6Co+mNGh5+PF42t5apYIhH35lC7k
 TgKcpWx2X2H+uW5hCymmqwV2gfLLNQvl8xN1+zUkXShWD4K7KWjS5GQDAMIh63fYGXm+
 ed3BAsVtwYpPvqJsF7boIU5AB93ewkgqizm7aT4FDCBxNcM20DD8HvqPNk6s6Afw8A0a
 krHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NVJCQ/meS0Lsexv3IBx7F9d7yUIfFyO6avMbOIjFh4s=;
 b=TZxsaDYU7/HpOaW4/q++yVuO8UDdRnULa4yEn9smnIGauY14vZHDFAmi0rCp57PN6Y
 56JoYvTFZNT0GZocoB9nmCfOmUVwyGD9saqkVMw1EX9dX6aU+rClX3q7e8gXTLuDEm7V
 vdvpmTDa5XSjDSvAnAVOFnUrRNnCigXQJJxIGGf5cDWkfipz60LGviN5cm6L2Re9r+V+
 TEAc9IcL3cBlm7AvyF+w7rLZ/4dkf+eAqTfNQHdY9NgUIwo7rj3+P+Wc1bAxHaxkDxS7
 bgpshc6mqEmhb+iLWG6MUjsvZklpAODN3nyYFWtOptSfGWR11ND6b0KpG+zB8Fb9szO0
 l6rQ==
X-Gm-Message-State: APjAAAUdas8br4VExQ+3E7yp8KUes1OWvddenFkSRf6Q268bFWF1qVqj
 bPFY0ZvY3R48+nsi4G0Nmjqiuw==
X-Google-Smtp-Source: APXvYqxsZM0ICZqWX68w0XRe09cnfhLQe5GD234bzH2jX1Q7W6s2mg37aevN5UE3Oi+D1MLUU05rWw==
X-Received: by 2002:a17:902:e9:: with SMTP id a96mr9816444pla.37.1557821549846; 
 Tue, 14 May 2019 01:12:29 -0700 (PDT)
Received: from google.com ([2620:15c:2cd:2:d714:29b4:a56b:b23b])
 by smtp.gmail.com with ESMTPSA id v1sm23451654pgb.85.2019.05.14.01.12.27
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 14 May 2019 01:12:28 -0700 (PDT)
Date: Tue, 14 May 2019 01:12:23 -0700
From: Brendan Higgins <brendanhiggins@google.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH v3 08/18] objtool: add kunit_try_catch_throw to the
 noreturn list
Message-ID: <20190514081223.GA230665@google.com>
References: <20190514054251.186196-1-brendanhiggins@google.com>
 <20190514054251.186196-9-brendanhiggins@google.com>
 <20190514065643.GC2589@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190514065643.GC2589@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_011231_702647_AEE04011 
X-CRM114-Status: GOOD (  11.92  )
X-Spam-Score: -13.1 (-------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-13.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 2.6 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
X-BeenThere: linux-um@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-um.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-um/>
List-Post: <mailto:linux-um@lists.infradead.org>
List-Help: <mailto:linux-um-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-um>,
 <mailto:linux-um-request@lists.infradead.org?subject=subscribe>
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, amir73il@gmail.com,
 dri-devel@lists.freedesktop.org, Alexander.Levin@microsoft.com,
 yamada.masahiro@socionext.com, mpe@ellerman.id.au,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, robh@kernel.org,
 kbuild test robot <lkp@intel.com>, linux-nvdimm@lists.01.org,
 frowand.list@gmail.com, knut.omang@oracle.com, kieran.bingham@ideasonboard.com,
 wfg@linux.intel.com, joel@jms.id.au, rientjes@google.com, jdike@addtoit.com,
 dan.carpenter@oracle.com, devicetree@vger.kernel.org,
 linux-kbuild@vger.kernel.org, Tim.Bird@sony.com, linux-um@lists.infradead.org,
 rostedt@goodmis.org, julia.lawall@lip6.fr,
 Josh Poimboeuf <jpoimboe@redhat.com>, dan.j.williams@intel.com,
 kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at, sboyd@kernel.org,
 gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, mcgrof@kernel.org, daniel@ffwll.ch,
 keescook@google.com, linux-fsdevel@vger.kernel.org, logang@deltatee.com,
 khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 08:56:43AM +0200, Peter Zijlstra wrote:
> On Mon, May 13, 2019 at 10:42:42PM -0700, Brendan Higgins wrote:
> > This fixes the following warning seen on GCC 7.3:
> >   kunit/test-test.o: warning: objtool: kunit_test_unsuccessful_try() falls through to next function kunit_test_catch()
> > 
> 
> What is that file and function; no kernel tree near me seems to have
> that.

Oh, sorry about that. The function is added in the following patch,
"[PATCH v3 09/18] kunit: test: add support for test abort"[1].

My apologies if this patch is supposed to come after it in sequence, but
I assumed it should come before otherwise objtool would complain about
the symbol when it is introduced.

Thanks!

[1] https://lkml.org/lkml/2019/5/14/44

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
