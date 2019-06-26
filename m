Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D5DE55CB6
	for <lists+linux-um@lfdr.de>; Wed, 26 Jun 2019 02:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Hg5FmLL9tyMBJlLXsFvkVBwkJzeIP+T8GQA59QsplE=; b=Rhjb/DlI5VHixD
	9X4oUeHMzCrSYKq+ZGKAY21pHEVER3cUVJOglxexltmRWXdCJtHmA+1ZaPJ/O8/3d++XZ00KnmROK
	1DTzaIIcY5D5zi3F9MVxTbAiB5svwKvpjhMqdnfYi9IrfO/760Nms62I4B8QWP6SOzR/m+1XsznT3
	4dRSEnHFabKPr++yInJAGD8dCfh/262QYvoSayrTxy3VNRkZjv/3u5nzXj0HAr1VjD6A0ZmeKwIlN
	m7ZNwfQMvSEIHPGE+OmWh3XBYSa7E5JL8e8jvk8Z4G4fdTzUmmhRnPzunDoPSKyAAGNbr7zW/GUUk
	SRXoP2apkib5o/gOrrFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfvNt-0000Qu-5Y; Wed, 26 Jun 2019 00:01:57 +0000
Received: from mail-pf1-f196.google.com ([209.85.210.196])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfvNq-0000QL-1C
 for linux-um@lists.infradead.org; Wed, 26 Jun 2019 00:01:55 +0000
Received: by mail-pf1-f196.google.com with SMTP id 19so258172pfa.4
 for <linux-um@lists.infradead.org>; Tue, 25 Jun 2019 17:01:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8jiVaE2JFBMfd+G3WCzNTPAlyBMExhnepJubp+vEbhM=;
 b=HPF7RZEzGtjy/VLXWn05yDlFZ1rUAMwZ2d3hRfxGLVrIOUhg/S5itX2JYEQS+Dg3ud
 XYnFM6ysb8SWoFhQvsIFok+AapmcysQaEyuqcq5rIGypjyzzR3HAuny3+9WAJ/mv+R4z
 cElTqMV3KzFhCyYYcvbtJownLDPrQnfETobXxUiIJf3v0/QQaQBHUBVpRMFVAVSZD4+m
 hy/XMVwB3FgN2XoWAUroLL1aUvgi9Ki1rTFVuoJSOOBfccVAPqAD+2mGnyDUMa/g3TA8
 jdZKI+lrJsvNPHxHHm3Z1S95zNiQhpXZVgtIUw58p2guUjmBOV5j798bhDhiNh+yAkT2
 F7fA==
X-Gm-Message-State: APjAAAX9bSqx3RUfGS7j8MEUE31yXZYvgdFSubg8X9AgA3+KZ6dcdnZ7
 ovSIXBq0R3QKd199jOKSQTY=
X-Google-Smtp-Source: APXvYqzNTUiSwWdZ3UgJYHzcAJb5xsbwt8eGmi7SJjyzu5XA3lIGVxbDEngQABiwrdIPUAy8M4OQFg==
X-Received: by 2002:a63:d756:: with SMTP id w22mr33935466pgi.156.1561507312844; 
 Tue, 25 Jun 2019 17:01:52 -0700 (PDT)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id z22sm14694045pgu.28.2019.06.25.17.01.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 17:01:51 -0700 (PDT)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id 0674940336; Wed, 26 Jun 2019 00:01:50 +0000 (UTC)
Date: Wed, 26 Jun 2019 00:01:50 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>
Subject: Re: [PATCH v5 13/18] kunit: tool: add Python wrappers for running
 KUnit tests
Message-ID: <20190626000150.GT19023@42.do-not-panic.com>
References: <20190617082613.109131-1-brendanhiggins@google.com>
 <20190617082613.109131-14-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617082613.109131-14-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_170154_078769_69248C96 
X-CRM114-Status: UNSURE (   6.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mcgrof[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.196 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: pmladek@suse.com, linux-doc@vger.kernel.org, peterz@infradead.org,
 amir73il@gmail.com, dri-devel@lists.freedesktop.org,
 Alexander.Levin@microsoft.com, yamada.masahiro@socionext.com,
 mpe@ellerman.id.au, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 robh@kernel.org, linux-nvdimm@lists.01.org, frowand.list@gmail.com,
 knut.omang@oracle.com, kieran.bingham@ideasonboard.com,
 Felix Guo <felixguoxiuping@gmail.com>, wfg@linux.intel.com, joel@jms.id.au,
 rientjes@google.com, jdike@addtoit.com, dan.carpenter@oracle.com,
 devicetree@vger.kernel.org, linux-kbuild@vger.kernel.org, Tim.Bird@sony.com,
 linux-um@lists.infradead.org, rostedt@goodmis.org, julia.lawall@lip6.fr,
 jpoimboe@redhat.com, kunit-dev@googlegroups.com, tytso@mit.edu, richard@nod.at,
 sboyd@kernel.org, gregkh@linuxfoundation.org, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, daniel@ffwll.ch, keescook@google.com,
 linux-fsdevel@vger.kernel.org, logang@deltatee.com, khilman@baylibre.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

On Mon, Jun 17, 2019 at 01:26:08AM -0700, Brendan Higgins wrote:
>  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-all_passed.log
>  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-crash.log
>  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-failure.log
>  create mode 100644 tools/testing/kunit/test_data/test_is_test_passed-no_tests_run.log
>  create mode 100644 tools/testing/kunit/test_data/test_output_isolated_correctly.log
>  create mode 100644 tools/testing/kunit/test_data/test_read_from_file.kconfig

Why are these being added upstream? The commit log does not explain
this.

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
