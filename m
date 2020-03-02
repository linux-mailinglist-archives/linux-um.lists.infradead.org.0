Return-Path: <linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-um@lfdr.de
Delivered-To: lists+linux-um@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E2F1176491
	for <lists+linux-um@lfdr.de>; Mon,  2 Mar 2020 21:03:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6snNZkiUkDWomUkfdtgHv4l37w3VeH/US57XSGEjBnU=; b=cMNQ14Bl3PR1+j
	1M1uiDulM0Aezr8ByK1gVk108EPCHQXMZFeIxObVtivNi9B6ccHLyfnZfDOaPP+8MtGZ0tXJi0N0z
	HLNaO87XF0aWIQZp3CGwizsEmW6Q4wy9z/h4URo6LE14/B9/WyZ7MjPJB6mY/WWVjbNtVBhJtn0nK
	btFUTKPBLcYKo4unWv6/1bJedrgyd2wsC9P4DSfIFvj51M2PmrZGS8osekVADGoPSCRlrbd7g+wR9
	O6BZ/DTSFbnlf6JGKYCsd5MX3cR1Uv4gMD15pvMdbEd0ellgD8GHvecNW2KfzFPZzKjT39PJiil7z
	vJKKtntXUcy/42ji2ZfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8rHz-0007ws-JC; Mon, 02 Mar 2020 20:03:43 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8rHx-0007wN-5O
 for linux-um@lists.infradead.org; Mon, 02 Mar 2020 20:03:42 +0000
Received: by mail-pj1-f67.google.com with SMTP id m7so259293pjs.0
 for <linux-um@lists.infradead.org>; Mon, 02 Mar 2020 12:03:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=x8hnni3vhDi7aIbQYbHQMlr5ZqUcPLomGxoatdX8mrA=;
 b=KvRVVoArwLuDmpstofI+987fGC4+9Xoc3N4Z9+YIXOHIGObIzg8llLekVuyD/oLOuW
 ssoOOGfehOhVMWu4GDLvO6ojHe2MWe/LxLMAHaeEzM5fwGJcCF7s0WPobTK3Iq8DLlpC
 +smPHTPF3HLAn7sJyLQ6r5jvNK+ADVp2itoLIKtnW3lWYVRMBy/mSasV5dxKy4Cq+0MJ
 QGPUMt9p3xYEtjECy9ESg021lSsUnu6x7LQpMbRLj8CioVN4R4UTJevkfOZcDnpxWBat
 pggyKMbe4ys+/fWFBwqcFHS361PDNbpjYaLiC89/jNKCUPN0dM92CNA+IpAyFJadPiB4
 wE/w==
X-Gm-Message-State: ANhLgQ2XvsViH3Zf3fo5BBF3LPzjfkUrxXgkm4Xi5r+vaoRqk5VUD3fQ
 NkAmrzBfHMjSDhJPfrsctNA=
X-Google-Smtp-Source: ADFU+vuYB7JzcPlCMm+BX7Ut7SC8WjNgfZ7Q/iUBFudLCFG4YiiLGj8tYwOu7drenEZPr/9oGb9n4g==
X-Received: by 2002:a17:902:ba94:: with SMTP id
 k20mr776029pls.104.1583179420392; 
 Mon, 02 Mar 2020 12:03:40 -0800 (PST)
Received: from 42.do-not-panic.com (42.do-not-panic.com. [157.230.128.187])
 by smtp.gmail.com with ESMTPSA id e9sm70268pjt.16.2020.03.02.12.03.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 02 Mar 2020 12:03:38 -0800 (PST)
Received: by 42.do-not-panic.com (Postfix, from userid 1000)
 id D3240413C3; Mon,  2 Mar 2020 20:03:37 +0000 (UTC)
Date: Mon, 2 Mar 2020 20:03:37 +0000
From: Luis Chamberlain <mcgrof@kernel.org>
To: Brendan Higgins <brendanhiggins@google.com>,
 Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3 0/7] kunit: create a centralized executor to dispatch
 all KUnit tests
Message-ID: <20200302200337.GH11244@42.do-not-panic.com>
References: <20200228012036.15682-1-brendanhiggins@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228012036.15682-1-brendanhiggins@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_120341_204328_3BA87225 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [mcgrof[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: linux-arch@vger.kernel.org, linux-kselftest@vger.kernel.org,
 keescook@chromium.org, arnd@arndb.de, gregkh@linuxfoundation.org,
 sboyd@kernel.org, richard@nod.at, jdike@addtoit.com, linux-doc@vger.kernel.org,
 linux-um@lists.infradead.org, frowand.list@gmail.com, rppt@linux.ibm.com,
 logang@deltatee.com, kunit-dev@googlegroups.com, davidgow@google.com,
 skhan@linuxfoundation.org, akpm@linux-foundation.org, yzaikin@google.com,
 alan.maguire@oracle.com, linux-kernel@vger.kernel.org,
 anton.ivanov@cambridgegreys.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-um" <linux-um-bounces@lists.infradead.org>
Errors-To: linux-um-bounces+lists+linux-um=lfdr.de@lists.infradead.org

Guenter,

are you still running your cross-architecture tests? If so any chance
you can try this for your build tests?

Brendan, do you have this code in a branch which can be merged into
linux-next by any chance?

  Luis

_______________________________________________
linux-um mailing list
linux-um@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-um
